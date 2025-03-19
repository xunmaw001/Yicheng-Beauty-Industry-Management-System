<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 首页 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>首页</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<body>

		<div id="app">
			<!-- 轮播图 -->
			<div class="layui-carousel" id="swiper">
				<div carousel-item id="swiper-item">
					<div v-for="(item,index) in swiperList" v-bind:key="index">
						<img class="swiper-item" :src="item.img">
					</div>
				</div>
			</div>
			<!-- 轮播图 -->

			
                                                                                                                                    <!-- 推荐 -->
			<div class="recommend-container">
				<h2 class="index-title">Recommend</h2>
				<div class="line-container">
					<p class="line"> 发型美容师推荐 </p>
				</div>
				<div class="recommend-list">
					<ul class="recommend-item">
						<li v-for="(item,index) in faxingmeirongshiRecommend" v-bind:key="index" @click="jump('../faxingmeirongshi/detail.jsp?id='+item.id)">
						
                                                                                                                                                                                                                                                                                                                                                                            
                            <img :src="item.zhaopian?item.zhaopian.split(',')[0]:''" width="218" height="218">
                            
                                                                                                                                                                                                                                
							                                                                                                                
                            <a class="img" href="#" :title="item.jishixingming"></a>
                            <a class="wor" href="#" :title="item.jishixingming">{{item.jishixingming}}</a>
                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                							
						</li>
					</ul>
				</div>
			</div>
			<!-- 推荐 -->
                                                                        <!-- 推荐 -->
			<div class="recommend-container">
				<h2 class="index-title">Recommend</h2>
				<div class="line-container">
					<p class="line"> 套餐信息推荐 </p>
				</div>
				<div class="recommend-list">
					<ul class="recommend-item">
						<li v-for="(item,index) in taocanxinxiRecommend" v-bind:key="index" @click="jump('../taocanxinxi/detail.jsp?id='+item.id)">
						
                                                                                                                                                                                                                                                                                                                    
                            <img :src="item.taocanzhaopian?item.taocanzhaopian.split(',')[0]:''" width="218" height="218">
                            
                                                                                                                                                                                                                                
							                                                                                                                
                            <a class="img" href="#" :title="item.taocanmingcheng"></a>
                            <a class="wor" href="#" :title="item.taocanmingcheng">{{item.taocanmingcheng}}</a>
                            
                                                                                                                                                                                                                                                                                                                                                                                                        							
						</li>
					</ul>
				</div>
			</div>
			<!-- 推荐 -->
                                                                                                                                                            
            
			
																																																																														
			
			
																																	<!-- 图文列表 -->
			<div class="data-container layui-row">
				<h2 class="index-title"> DATA SHOW </h2>
				<div class="line-container">
					<p class="line"> 发型美容师展示 </p>
				</div>
				<div style="text-align: center;margin-top: 20px;">
					<button @click="jump('../faxingmeirongshi/list.jsp')" type="button" class="layui-btn layui-btn-primary">查看更多>></button>
				</div>
				<div class="data-list layui-col-md8 layui-col-md-offset2">
					<div @click="jump('../faxingmeirongshi/detail.jsp?id='+item.id)" class="data-item layui-col-md3"  v-for="(item,index) in faxingmeirongshiList" v-bind:key="index" v-if="item">
																																																																														
						<img class="cover" :src="item.zhaopian?item.zhaopian.split(',')[0]:''">
						
																																																
																														
						<h3 class="title">{{item.jishixingming}}</h3>
						
																																																																																																
						<div v-if="item.price" class="data">
							<span  class="item price">{{item.price}} RMB</span>
						</div>
					</div>
				</div>
			</div>
			<!-- 图文列表 -->
																		<!-- 图文列表 -->
			<div class="data-container layui-row">
				<h2 class="index-title"> DATA SHOW </h2>
				<div class="line-container">
					<p class="line"> 套餐信息展示 </p>
				</div>
				<div style="text-align: center;margin-top: 20px;">
					<button @click="jump('../taocanxinxi/list.jsp')" type="button" class="layui-btn layui-btn-primary">查看更多>></button>
				</div>
				<div class="data-list layui-col-md8 layui-col-md-offset2">
					<div @click="jump('../taocanxinxi/detail.jsp?id='+item.id)" class="data-item layui-col-md3"  v-for="(item,index) in taocanxinxiList" v-bind:key="index" v-if="item">
																																																																		
						<img class="cover" :src="item.taocanzhaopian?item.taocanzhaopian.split(',')[0]:''">
						
																																																
																														
						<h3 class="title">{{item.taocanmingcheng}}</h3>
						
																																																																																				
						<div v-if="item.price" class="data">
							<span  class="item price">{{item.price}} RMB</span>
						</div>
					</div>
				</div>
			</div>
			<!-- 图文列表 -->
																																							

		</div>

		<script src="../../layui/layui.js"></script>
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>

		<script>
			var vue = new Vue({
				el: '#app',
				data: {
                    
                    
                                                                                                                                                                                                                            // 推荐数据
					faxingmeirongshiRecommend: [],
                                                                                                                        // 推荐数据
					taocanxinxiRecommend: [],
                                                                                                                                                                                                                                                                    

                    
					                                                                                                                                                                                                        faxingmeirongshiList: [],
                                                                                                                        taocanxinxiList: [],
                                                                                                                                                                                                                                                                    

                    // 轮播图
					swiperList: [{
						img: '../../img/banner.jpg'
					}],
					// 新闻资讯
					leftNewsList: [],
					rightNewsList: []
				},
				filters: {
					newsDesc: function(val) {
						if (val) {
							if (val.length > 60) {
								return val.substring(0, 60).replace(/<[^>]*>/g).replace(/undefined/g, '');
							} else {
								return val.replace(/<[^>]*>/g).replace(/undefined/g, '');
							}
						}
						return '';
					}
				},
				methods: {
					jump(url) {
						jump(url)
					}
				}
			})

			layui.use(['layer', 'form', 'element', 'carousel', 'http', 'jquery'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var form = layui.form;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;

				// 获取轮播图 数据
				http.request('config/list', 'get', {
					page: 1,
					limit: 5
				}, function(res) {
					if (res.data.list.length > 0) {
						var swiperItemHtml = '';
						for (let item of res.data.list) {
							if (item.name.indexOf('picture') >= 0 && item.value && item.value != "" && item.value != null) {
								swiperItemHtml +=
									'<div>' +
									'<img class="swiper-item" src="' + item.value + '">' +
									'</div>';
							}
						}
						jquery('#swiper-item').html(swiperItemHtml);
						// 轮播图
						carousel.render({
							elem: '#swiper',
							width: swiper.width,height:swiper.height,
							arrow: swiper.arrow,
							anim: swiper.anim,
							interval: swiper.interval,
							indicator: swiper.indicator
						});
					}
				});
                
                
				                                                                                                                                                                                                                                                                                                                                                                                                                
                
                
                                                                                                                                                                                // 获取推荐信息
				http.request(`faxingmeirongshi/autoSort?limit=4`, 'get', {
					page: 1,
					limit: 4
				}, function(res) {
					vue.faxingmeirongshiRecommend = res.data.list
				});
                                                                                                // 获取推荐信息
				http.request(`taocanxinxi/autoSort?limit=4`, 'get', {
					page: 1,
					limit: 4
				}, function(res) {
					vue.taocanxinxiRecommend = res.data.list
				});
                                                                                                                                                                                                                
				
                
                                                                                                                                                                                http.request(`faxingmeirongshi/list?limit=4`, 'get', {
					page: 1,
					limit: 4
				}, function(res) {
					vue.faxingmeirongshiList = res.data.list
				});
                                                                                                http.request(`taocanxinxi/list?limit=4`, 'get', {
					page: 1,
					limit: 4
				}, function(res) {
					vue.taocanxinxiList = res.data.list
				});
                                                                                                                                                                                                                
				
			});
		</script>
	</body>
</html>
