package com.furence.recsee.admin.config;

import org.sitemesh.builder.SiteMeshFilterBuilder;
import org.sitemesh.config.ConfigurableSiteMeshFilter;

public class SiteMeshConfig extends ConfigurableSiteMeshFilter {

    @Override
    protected void applyCustomConfiguration(SiteMeshFilterBuilder builder) {
        builder
                // Map decorators to path patterns.
                .addDecoratorPath("/", 		"loginLayout.jsp")
                .addDecoratorPath("/main", 		"mainLayout.jsp")
                .addDecoratorPath("/*", 		"defaultLayout.jsp")
                // Exclude path from decoration.
                .addExcludedPath("/html/*")
                .addExcludedPath(".json")

                .setMimeTypes("text/html");
    }

}
