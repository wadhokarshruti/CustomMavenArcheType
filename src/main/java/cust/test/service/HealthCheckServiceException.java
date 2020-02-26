package cust.test.service;

import cust.test.exception.ApiException;
import cust.test.exception.NotFoundException;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HealthCheckServiceException {
    @GetMapping("healthCheckApiException")
    public boolean  healthCheck() throws Exception {
            throw new ApiException("Api Exception");
    }
    @GetMapping("healthCheckNotFoundException")
    public HttpStatus healthCheckNotFoundException() throws Exception {
        throw new NotFoundException("NotFoundException");
    }
}
