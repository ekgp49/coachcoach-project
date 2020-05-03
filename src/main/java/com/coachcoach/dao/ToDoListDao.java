package com.coachcoach.dao;

import java.util.List;
import com.coachcoach.domain.ToDoList;

public interface ToDoListDao {

  // toDoList 등록 시 사용
  int insert(ToDoList toDoList) throws Exception;

  // 게시글 리스트 (멤버넘버가 필요)
  List<ToDoList> findAll(int memberNo) throws Exception;

  // 게시글 업데이트 사용
  int update(ToDoList toDoList) throws Exception;

  // 게시글 삭제시 사용
  int delete(int no) throws Exception;
}


