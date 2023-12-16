package com.example;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl {
//    @Autowired
//    UserDAO userDAO;
//    public UserVO getUser(UserVO vo) {
//        return userDAO.getUser(vo);
//    }
    public UserVO getUser(UserVO user) {
        if ("admin".equals(user.getUserid()) && "1234".equals(user.getPassword())) {
            return user;
        } else {
            return null;
        }
    }
}
