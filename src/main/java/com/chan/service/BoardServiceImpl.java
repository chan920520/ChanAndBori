package com.chan.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.chan.domain.BoardVO;
import com.chan.persistence.BoardDAO;

@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	private BoardDAO dao;

	@Override
	public List<BoardVO> listPage() throws Exception {

		return dao.listPage();
	}

	@Override
	public void create(BoardVO vo) throws Exception {

		dao.create(vo);
	}

	@Override
	public BoardVO read(Integer bno) throws Exception {

		return dao.read(bno);
	}

	@Override
	public void update(BoardVO vo) throws Exception {

		dao.update(vo);
	}

	@Override
	public void remove(Integer bno) throws Exception {

		dao.remove(bno);
	}

}
