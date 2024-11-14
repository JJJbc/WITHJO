package com.withJo.course.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.catalina.util.ParameterMap;
import org.apache.ibatis.binding.MapperMethod.ParamMap;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.google.gson.Gson;
import com.withJo.course.domain.CourseVo;

@Repository
public class CourseDaoImpl implements CourseDao{
	
	@Autowired
	private SqlSession sqlSession;
	
	String namespace = "mappers.withJo.course.";

	@Override
	public List<CourseVo> getCourseList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + "getCourseList");
	}

	@Override
	public List<CourseVo> courseCategorySelect(int courseAgeLimit, int categoryNo) {
		// TODO Auto-generated method stub
		Map<String, Integer> paramMap = new HashMap<>();
		paramMap.put("courseAgeLimit", courseAgeLimit);
		paramMap.put("categoryNo", categoryNo);
		
		return sqlSession.selectList(namespace + "courseCategorySelect",paramMap);
	}

	@Override
	public CourseVo getCourseDetailList(int courseNo) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + "getCourseDetailList",courseNo);
	}

	@Override
	public List<CourseVo> getCourseDay(int courseNo) {
		// TODO Auto-generated method stub
		System.out.println("getCourseDay??"+courseNo);
		return sqlSession.selectList(namespace + "getCourseDay",courseNo);
	}

	@Override
	public List<CourseVo> getCategory(int courseAgeLimit) {
		// TODO Auto-generated method stub
	    
		return sqlSession.selectList(namespace + "getCategory",courseAgeLimit);
	}
	@Override
	public void courseInsert(Map<String, Object> map) {
		// TODO Auto-generated method stub
		System.out.println("daomap:" + map);
		
		sqlSession.insert(namespace + "courseInsert", map);
	}

	@Override
	public void courseDayInsert(Map<String, Object> map) {
		// TODO Auto-generated method stub
		
		/*
		 * Gson gson = new Gson(); System.out.println("gson:" +
		 * gson.toJson(map.get("courseDayOfTheWeek")).toString());
		 * System.out.println("gson:" + gson.toJson(map).toCharArray());
		 */
		
		 List<Integer> dayOfWeekList = (List<Integer>) map.get("courseDayOfTheWeek");
		 System.out.println("dayOfWeekList: " + dayOfWeekList);
		 
		 for(int i = 0; i < dayOfWeekList.size(); i++) {
			 map.put("courseDayOfTheWeek", dayOfWeekList.get(i));
			 sqlSession.insert(namespace + "courseDayInsert",map);
		 }
			
	}
	
	
}
