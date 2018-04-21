package com.example.employeeapi.controller;

import com.example.employeeapi.datasource.EmployeeRepository;
import com.example.employeeapi.model.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@EnableAutoConfiguration
public class EmployeeController {
    @Autowired
    private EmployeeRepository employeeRepository;

    @RequestMapping("/employees")
    public ModelAndView getEmployees() {

        List<Employee> es = employeeRepository.getAllEmployees();
        List<Map<String,Object>> rs = new ArrayList<>();
        for (Employee e:es){
            Map<String, Object> map = new HashMap<>();
            map.put("id", e.getId());
            map.put("name", e.getName());
            map.put("age", e.getAge());
            map.put("gender", e.getGender());
            rs.add(map);
        }
        ModelAndView mav = new ModelAndView("employees");
//        model.addAttribute("message", "hello world");
        mav.addObject("employees",rs);
        mav.addObject("message","hello world");
        return mav;
    }


    @GetMapping("/employees/{id}")
    ResponseEntity getEmployee(@PathVariable("id") int id) {
        return new ResponseEntity<>(employeeRepository.getEmployee(id), HttpStatus.OK);
    }



}
