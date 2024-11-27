package com.example.Jenkins.sampleJenkinsDockerExample.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.context.annotation.RequestScope;

//@RequestMapping("/home")
@RestController
public class SampleController {

    @GetMapping("/hi")
    public String sendResponse(){
        return "Hello welcome to my app!!!";
    }
}
