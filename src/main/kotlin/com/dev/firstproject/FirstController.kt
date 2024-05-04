package com.dev.firstproject

import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController

@RestController
class FirstController {

    @GetMapping
    fun getMessage(): String {
        return "Hello World!"
    }
}