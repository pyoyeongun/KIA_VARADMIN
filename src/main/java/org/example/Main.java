package org.example;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.ConfigurationPropertiesScan;
import org.springframework.boot.web.servlet.ServletComponentScan;

@ConfigurationPropertiesScan(basePackages = "com.furence.*")
@SpringBootApplication
@ServletComponentScan
public class Main {
    public static void main(String[] args) {
        System.out.println("Hello world!");
    }
}