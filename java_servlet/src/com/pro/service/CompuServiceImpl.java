package com.pro.service;

import com.pro.domain.Compu;

public class CompuServiceImpl implements CompuService {

	public double jia(Compu compu){
		return compu.getN1()+compu.getN2();
	}
}
