package com.example;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class LoginCheckInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
        HttpSession session = request.getSession();
        Object obj = session.getAttribute("login");
        if (obj == null) {
            response.sendRedirect(request.getContextPath() + "/login/login");
            return false;
        }
        return true;
    }
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
                           ModelAndView modelAndView) throws Exception {
        postHandle(request, response, handler, modelAndView);
    }
//    default void postHandle(javax.servlet.http.HttpServletRequest request,
//    javax.servlet.http.HttpServletResponse response, java.lang.Object handler,
//    @org.springframework.lang.Nullable
//    org.springframework.web.servlet.ModelAndView modelAndView) throws java.lang.Exception { /* compiled code */ }
}
