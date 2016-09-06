package kr.co.javaspecialist.mot.controller;

import org.apache.log4j.Logger;

import kr.co.javaspecialist.common.controller.CommandHandler;
import kr.co.javaspecialist.mot.model.DeptDAO;
import kr.co.javaspecialist.mot.model.EmpDAO;
import kr.co.javaspecialist.mot.model.IDeptDAO;
import kr.co.javaspecialist.mot.model.IEmpDAO;

public abstract class MotController implements CommandHandler{
	static final Logger logger = Logger.getLogger(MotController.class);

	IEmpDAO empDao = new EmpDAO();
	IDeptDAO deptDao = new DeptDAO();

}
