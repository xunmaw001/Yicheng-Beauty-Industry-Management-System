package com.entity.view;

import com.entity.TaocanxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 套餐信息
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-03-22 10:01:21
 */
@TableName("taocanxinxi")
public class TaocanxinxiView  extends TaocanxinxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public TaocanxinxiView(){
	}
 
 	public TaocanxinxiView(TaocanxinxiEntity taocanxinxiEntity){
 	try {
			BeanUtils.copyProperties(this, taocanxinxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
