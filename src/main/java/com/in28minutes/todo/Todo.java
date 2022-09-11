package com.in28minutes.todo;

import java.util.Date;
import java.util.Objects;

import javax.validation.constraints.Size;

public class Todo {

	private int id;
	private String user;
	
	@Size(min=6,message="Enter atleast 6 Characters.")
	private String desc;
	private Date targetDate;
	private boolean itDone;
	
	public Todo() {
		super();
	}


	Todo (int id,String user,String desc,Date targetDate,boolean itDone){
		super();
		this.id=id;
		this.user=user;
		this.desc = desc;
		this.targetDate = targetDate;
		this.itDone=itDone;
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public Date getTargetDate() {
		return targetDate;
	}

	public void setTargetDate(Date targetDate) {
		this.targetDate = targetDate;
	}



	public boolean isItDone() {
		return itDone;
	}


	public void setItDone(boolean itDone) {
		this.itDone = itDone;
	}


	@Override
	public String toString() {
		return String.format("ToString ~Todo [id=%s, user=%s, desc=%s, targetDate=%s, isDone=%s]", id, user, desc, targetDate,
				itDone);
	}

	@Override
	public int hashCode() {
		return Objects.hash(id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Todo other = (Todo) obj;
		return id == other.id;
	}
	
	
	
}
