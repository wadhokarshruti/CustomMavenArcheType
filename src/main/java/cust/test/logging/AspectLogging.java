package cust.test.logging;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class AspectLogging {
        private Logger logger = LoggerFactory.getLogger(AspectLogging.class);

        @Before("execution(* cust.test.service.*.*(..))")
        public void before(JoinPoint joinPoint){
            //Advice before every method call
            logger.info("Before Service execution");
            logger.info("Allowed execution for {}", joinPoint);
        }
}
