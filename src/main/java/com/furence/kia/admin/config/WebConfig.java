package com.furence.recsee.admin.config;


import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class WebConfig {

    @Bean
    public FilterRegistrationBean<SiteMeshConfig> siteMeshFilter() {

        FilterRegistrationBean<SiteMeshConfig> filter = new FilterRegistrationBean<SiteMeshConfig>();
        filter.setFilter(new SiteMeshConfig());

        return filter;

    }

}