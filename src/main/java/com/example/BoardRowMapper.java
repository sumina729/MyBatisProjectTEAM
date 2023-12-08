package com.example;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class BoardRowMapper implements RowMapper<BoardVO> {
    @Override
    public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException{
        BoardVO vo = new BoardVO();
        vo.setSeq(rs.getInt("seq"));
        vo.setEnglish(rs.getString("english"));
        vo.setMeaning(rs.getString("meaning"));
        vo.setExplain(rs.getString("explain"));
        vo.setLevel(rs.getString("level"));
        return vo;
    }
}
