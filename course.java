package com.learn.model;

import java.io.Serializable;

public class course implements Serializable{
	
   private static final long serialVersionUID =1L;
   private String courseName;
   private String facultyName;
   private String description;
   private String imageUrl;
   private int fees;
   private int userRating;
   private int ratings;
   
		public String getCourseName() {
			return courseName;
		}
		public void setCourseName(String courseName) {
			this.courseName = courseName;
		}
		public String getFacultyName() {
			return facultyName;
		}
		public void setFacultyName(String facultyName) {
			this.facultyName = facultyName;
		}
		public String getDescription() {
			return description;
		}
		public void setDescription(String description) {
			this.description = description;
		}
		public String getImageUrl() {
			return imageUrl;
		}
		public void setImageUrl(String imageUrl) {
			this.imageUrl = imageUrl;
		}
		public int getFees() {
			return fees;
		}
		public void setFees(int fees) {
			this.fees = fees;
		}
		public int getUserRating() {
			return userRating;
		}
		public void setUserRating(int userRating) {
			this.userRating = userRating;
		}
		public int getRatings() {
			return ratings;
		}
		public void setRatings(int ratings) {
			this.ratings = ratings;
		}
    
}
