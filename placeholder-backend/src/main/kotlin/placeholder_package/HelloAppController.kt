package placeholder_package

import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController

@RestController
class HelloAppController {

    @GetMapping("hello")
    fun hello(): String {
        return "Hello"
    }

}