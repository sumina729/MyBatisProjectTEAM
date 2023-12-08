package com.example;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BoardDAO {

    @Autowired
    SqlSession sqlSession;


    public List<BoardVO> getBoardList() {
        List<BoardVO> list = sqlSession.selectList("Board.getBoardList");
        System.out.println(list.get(0).getRegdate());
        System.out.println(list.get(0).getModifydate());
        return list;
    }

    public int insertBoard(BoardVO vo) {

        int num = sqlSession.insert("Board.insertBoard", vo);

        return num;
    }

    public int deleteBoard(int seq) {
        int num = sqlSession.delete("Board.deleteBoard", seq);
        return num;
    }

    public int updateBoard (BoardVO vo) {
        int num = sqlSession.update("Board.updateBoard", vo);

        return num;
    }


    public BoardVO getBoard (int seq) {
        BoardVO list = sqlSession.selectOne("Board.getBoard", seq);
        return list;
    }

    /*
    public int insertBoard(BoardVO vo) {

        String sql = "INSERT INTO BOARD (title, writer, content, category) VALUES (?, ?, ?, ?)";

        return jdbcTemplate.update(sql, vo.getTitle(), vo.getWriter(), vo.getContent(), vo.getCategory());
    }

    public int deleteBoard(int seq) {
        String sql = "delete from BOARD where seq = " + seq;
        return jdbcTemplate.update(sql);
    }

    public int updateBoard (BoardVO vo) {
        String sql = "update BOARD set title='" + vo.getTitle() + "', "
                + " title='" + vo.getTitle() + "'," +" writer='" + vo.getWriter() + "', " + " content='" + vo.getContent() + "',"
                + "category='" + vo.getCategory() +"' where seq=" + vo.getSeq();

        return jdbcTemplate.update(sql);
    }


    public BoardVO getBoard (int seq) {
        String sql = "select * from BOARD where seq=" + seq;
        return jdbcTemplate.queryForObject(sql, new BoardRowMapper());
    }
    public List<BoardVO> getBoardList() {
        String sql = "select * from BOARD order by regdate desc";
        return jdbcTemplate.query(sql, new BoardRowMapper());
    }

     */
}
