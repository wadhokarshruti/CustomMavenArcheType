package cust.test.service;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HealthCheckService {
    @GetMapping("healthCheck")
    public HttpStatus healthCheck(){

        return HttpStatus.OK;
    }
}
