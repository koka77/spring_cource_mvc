package com.alexandersomov.spring.mvc.validation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

/*
 * CheckEmail - наша аннотация
 * String - Тип поля, на которое её можно вешать
 * */
public class CheckEmailValidator implements ConstraintValidator<CheckEmail, String> {

    private String endOfEmail;

    @Override
    public void initialize(CheckEmail constraint) {
        endOfEmail = constraint.value();
    }

    @Override
    public boolean isValid(String senteredValue, ConstraintValidatorContext context) {

        return senteredValue.endsWith(endOfEmail);
    }
}
