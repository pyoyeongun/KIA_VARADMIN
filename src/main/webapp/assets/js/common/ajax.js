const ajax = {
	request: ({ url, params, payload, method }) => {
		return new Promise((resolve, reject) => {
			const sessionId = window.sessionStorage.getItem('x-recsee-session-id');
			let ajaxOptions = {
				url: `${window.$RECSEE.APP_URL}${url}`,
				contentType: "application/json",
				method: method,
				headers: {
					'x-recsee-session-id' : sessionId
				},
				xhrFields: {
					withCredentials: true
				},
				error: async (e) => {
					// 예외
					if (url === DEFINES.API.LOGIN.KEEPALIVE) reject(e)

					const error = e.responseJSON;
					const errorStatus = error.status;
					switch (errorStatus) {
						case -4011:
							await dialog.alert({title:'오류', description: '만료된 세션입니다. 다시 로그인해주세요.'})
							window.sessionStorage.clear();
							// 로그인 페이지 이동
							top.location.replace("/");
							break;
						case -4041:
							await dialog.alert({title: '오류', description: '사용자를 찾을수 없습니다.'}); break;
					}
					reject(e);
				},
				success: (data) => {
					resolve(data);
				}
			};

			if (method === 'GET' && params) {
				ajaxOptions.url += '?' + new URLSearchParams(params).toString();
			} else if (payload) {
				ajaxOptions.data = JSON.stringify(payload);
			}
			
			// 요청
			$.ajax(ajaxOptions);
		});
	},

	get: ({ url, params }) => {
		return ajax.request({ url, params, method: 'GET' });
	},

	post: ({ url, payload }) => {
		return ajax.request({ url, payload, method: 'POST' });
	},

	put: ({ url, payload }) => {
		return ajax.request({ url, payload, method: 'PUT' });
	},

	delete: ({ url, params }) => {
		return ajax.request({ url, params, method: 'DELETE' });
	}

}

/**
 *	TODO 공통 호출
 */
// const findMe = async () => {
// 	const response = await ajax.get({url: DEFINES.API.ACCOUNT.ME});
// 	$RECSEE.ME = response.payload;
// }