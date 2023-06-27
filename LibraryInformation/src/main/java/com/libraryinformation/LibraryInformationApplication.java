package com.libraryinformation;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan
public class LibraryInformationApplication {

    public static void main(String[] args) {
        SpringApplication.run(LibraryInformationApplication.class, args);
    }

}
