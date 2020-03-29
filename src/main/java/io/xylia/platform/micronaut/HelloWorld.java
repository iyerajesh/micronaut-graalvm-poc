package io.xylia.platform.micronaut;

import io.micronaut.http.annotation.Controller;
import io.micronaut.http.annotation.Get;

@Controller("/")
public class HelloWorld {

    @Get("/hello")
    public String hello() {
        return "Hello World!";
    }
}
