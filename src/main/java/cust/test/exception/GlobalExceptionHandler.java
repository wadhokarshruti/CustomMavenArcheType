package cust.test.exception;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class GlobalExceptionHandler {
    @ExceptionHandler({ApiException.class, NotFoundException.class})
    public ResponseEntity handleException(Exception ex){
        //handleException
        return new ResponseEntity("API Exception", HttpStatus.BAD_REQUEST);
    }
}
