/*
	�ͻ���Ϣ��
*/
CREATE TABLE Guest
	(id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,     --�ͻ�ID
	Gname VARCHAR(20)NOT NULL,						--�ͻ�����
	Gsex VARCHAR(2)NOT NULL,						--�Ա�
	Gidcard VARCHAR(30)NOT NULL,                    --֤����
	Gphone VARCHAR(20)NOT NULL,                     --�绰
	Gface VARCHAR(20)NOT NULL,                      --������Ϣ
	Gbodybuilding INT NOT NULL,						--����
	Gfood INT NOT NULL,								--����
	Gvip INT NOT NULL								--VIP
	);

/*
	��¼��Ϣ��
*/
CREATE TABLE Userlogin
	(id  INT NOT NULL IDENTITY(1,1) PRIMARY KEY,    --�û����
	Uusername VARCHAR(20)NOT NULL,					--�û���
	Upassword VARCHAR(20)NOT NULL,					--����
	Uper INT NOT NULL								--Ȩ��
	);

/*
	�������ͱ�
*/
CREATE TABLE Roomtype
	(id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,         --���ͱ��
	Rtypename VARCHAR(20)NOT NULL,						--������
	Rprice INT NOT NULL									--�۸�
	);
	
/*
	������Ϣ��
*/
CREATE TABLE Room
	(id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,				        --����ID
	Rroomnum INT NOT NULL,											--�����
	Rtypeid INT NOT NULL foreign key REFERENCES Roomtype(id)		--��������ID
	);

/*
	�ͻ�ס���Ǽ���Ϣ��
*/
CREATE TABLE Checkin
	(id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,				        --�Ǽ�ID
	Cuserid INT NOT NULL foreign key REFERENCES Userlogin(id),		--�˻�id
	Croomnum INT NOT NULL foreign key REFERENCES Room(id),			--����ID
	Cguestid INT NOT NULL foreign key REFERENCES Guest(id),			--�ͻ�ID
	Cstartdate DATE NOT NULL,										--Ԥ����ס����
	Clastdate DATE NOT NULL,										--�˷�����
	Cspe VARCHAR(50)												--��ע
	);