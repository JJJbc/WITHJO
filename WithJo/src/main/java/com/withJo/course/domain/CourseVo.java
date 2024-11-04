package com.withJo.course.domain;

import java.util.Date;

import com.withJo.member.domain.MemberVo;

import jakarta.persistence.Id;
import lombok.Data;

@Data
public class CourseVo extends MemberVo{

	@Id
	private int courseNo;
	private int categoryNo;
	private String categoryName;
	private String courseName;
	private String courseTeacher;
	private int courseCost;
	private int courseCurrentPeople;
	private int courseMaxPeople;
	private int courseGenderCheck;
	private int courseAgeLimit;
	private Date courseStartDate;
	private Date courseEndDate;
	private String courseStartTime;
	private String courseEndTime;
	private Date courseRecStart;
	private Date courseRecEnd;
	private String courseInfo;
	private String courseMainImage;
	private int courseDayOfTheWeek;
	
	
	
	
}