USE FPDB;
GO

-- List of Tables --

SELECT
	TABLE_NAME 
FROM
	FPDB.INFORMATION_SCHEMA.TABLES 
WHERE
	TABLE_TYPE = 'BASE TABLE'




--patients visit to Hospital--
SELECT
	V.Visitid,
	V.Visitdate,
	P.FirstName + ' ' + P.LastName AS [Patient FullName],
	P.PatientID,
	PC.Name AS [Patient Category],
	U.Name AS [Unit Name],
	C.Amount AS [Amount Charged],
	C.Concession AS [Concession Amount],
	D.FirstName + ' ' + D.LastName AS [Doctors Name],
	DE.Name AS [Service Dept]
FROM
	VISIT V
	INNER JOIN PatientCategory PC ON V.PatientCategoryID = PC.PatientCategoryID
	INNER JOIN Patient P ON P.PatientID = V.PatientID
	INNER JOIN Unit U ON V.Unitid = U.Unitid
	INNER JOIN Charge C ON V.Visitid = C.Visitid
	INNER JOIN Doctor D ON V.DoctorID = D.DoctorID
	INNER JOIN Department DE
	ON D.DepartmentID = DE.DepartmentID




	--Admitted Patient in Hospitals--
	
	SELECT P.PatientID , 
	A.AdmissionID,
	P.FirstName + ' ' + P.LastName AS [Patient Name], 
	PC.Name AS [Patient Category],
	D.FirstName + ' ' + D.LastName AS [Doctors Name],
    A.AdmissionDate AS [Admission Date],
	DD.DischargeDate AS [Discharge Date],
	DE.Name AS [Service Dept]
	FROM Admission A
	INNER JOIN Patient P 
	ON P.PatientID = A.PatientID
	INNER JOIN PatientCategory PC
	ON A.PatientCategoryID = PC.PatientCategoryID
	INNER JOIN Doctor D
	ON D.DoctorID = A.DoctorID
	INNER JOIN Department DE
	ON D.DepartmentID = DE.DepartmentID
	INNER JOIN Discharge DD
	ON A.AdmissionID = DD.AdmissionID

	
--Patient details and charges by Service and dept--

	SELECT P.PatientID,
	P.FirstName + ' ' + P.LastName AS [Patient Name],
	PC.Name AS [Patient Category],
	C.Amount AS [Amount],
	C.Concession AS [Concession],
	S.Name AS [Service Name],  /*Not related to Service Type*/ 
	SC.Name AS [Dept] 
	FROM Visit V
	INNER JOIN Patient P
	ON V.PatientID = P.PatientID
	INNER JOIN PatientCategory PC
	ON V.PatientCategoryID = PC.PatientCategoryID
	INNER JOIN Charge C
	ON C.VisitID = V.VisitID
	INNER JOIN Service S
	ON S.ServiceID = C.ServiceID
	INNER JOIN ServiceCategory SC
	ON S.ServiceCategoryID = SC.ServiceCategoryID


	
	
