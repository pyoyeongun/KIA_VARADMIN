<%-- Script --%>
<script>
  var $RECSEE;

  // Load scripts
  const loadScripts = () => {
    const scripts = [
      "/dhtmlx8.1.5/codebase/suite.js",
      "/dhtmlx8.0.8_gantt/codebase/dhtmlxgantt.js",
      "/webjars/jquery/3.7.1/dist/jquery.js",
      "/js/common/ajax.js",
      "/js/common/dialog.js",
      "/js/common/modal.js",
      "/js/common/pagination.js",
      "/js/common/defines.js",
      "/js/common/config.js",
      "/js/common/functions.js",
    ];
    scripts.forEach((src) => {
      const script = document.createElement("script");
      script.src = src;
      script.defer = true;
      document.body.appendChild(script);
    });
  };

  // Init first
  const initFirst = async () => {
    const response = await fetch(window.location.origin + `${"/config/recsee.config.json"}`);
    $RECSEE = await response.json();
    loadScripts();
  };

  // Init execution
  initFirst();
</script>

<%-- Style --%>
<link rel="stylesheet" type="text/css" href="/dhtmlx8.1.5/codebase/suite.css" />
<link rel="stylesheet" type="text/css" href="/dhtmlx8.0.8_gantt/codebase/dhtmlxgantt.css" />
<%--<link rel="stylesheet" type="text/css" href="/dhtmlx8.1.5/material/materialdesignicons.min.css" />--%>
<link rel="stylesheet" type="text/css" href="/css/common/custom_suite.css" />
<link rel="stylesheet" type="text/css" href="/css/common/dialog.css" />
<link rel="stylesheet" type="text/css" href="/css/common/buttons.css" />
<link rel="stylesheet" type="text/css" href="/css/common/common.css" />
<link rel="stylesheet" type="text/css" href="/css/common/pagination.css" />
<link rel="icon" href="/images/logo/kb_favicon.svg" />