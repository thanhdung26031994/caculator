package org.example.calculator.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CalculatorController {
    @GetMapping(value = "/calculator")
    public String showCalculator(){
        return "calculator";
    }

    @PostMapping(value = "/calculator")
    public String calculator(@RequestParam("operator") String operator,
                             @RequestParam("firstNumber") int firstNumber,
                             @RequestParam("secondNumber") int secondNumber, Model model){
        model.addAttribute("firstNumber", firstNumber);
        model.addAttribute("secondNumber", secondNumber);

        switch (operator){
            case "Addition(+)":
                model.addAttribute("operator","Addition");
                model.addAttribute("result",firstNumber+secondNumber);
                break;
            case "Subtraction(-)":
                model.addAttribute("operator","Subtraction");

                model.addAttribute("result",firstNumber-secondNumber);
                break;
            case "Multiplication(*)":
                model.addAttribute("operator","Multiplication");

                model.addAttribute("result",firstNumber*secondNumber);
                break;
            case "Division(/)":
                if (secondNumber==0){
                    model.addAttribute("result","Error: by Zero");
                }else {
                    model.addAttribute("operator","Division");
                    model.addAttribute("result",firstNumber/secondNumber);
                }
                break;
        }

        return "calculator";
    }
}
