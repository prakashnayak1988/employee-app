package com.example.employee.controller;

import org.junit.jupiter.api.Test;
import static org.assertj.core.api.Assertions.assertThat;

public class HelloControllerTest {

    @Test
    void testHelloMessage() {
        HelloController controller = new HelloController();
        assertThat(controller.sayHello()).isEqualTo("Hello, Employee App is running on Tomcat!");
    }
}
