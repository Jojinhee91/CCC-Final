package com.kh.ccc.reply;

public class Reply {
	
	//reply ��Ű�� ���� ����� Ŭ���� ���ϵ� �������� 
	//�����Դϴ�
	
	private String userName;

	//�������ۼ� (3��° test���Դϴ�)
	public Reply() {
		super();
	}

	public Reply(String userName) {
		super();
		this.userName = userName;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	@Override
	public String toString() {
		return "Reply [userName=" + userName + "]";
	}
	
	
	

}
