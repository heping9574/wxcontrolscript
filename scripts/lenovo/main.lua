require "PageUtil";
require "AddFriends";
require "login";
require "Moments";
require "AppUtil";
require "TongXunLu";
require "News";
require "HttpUtil";
require "Group";


--[[
1000:登录
1001:账号切换
3001:朋友圈发图文
3002:朋友圈发文
3003:朋友圈分享链接
3004:朋友圈点赞
3005:朋友圈评论
4000:搜索加好友
4001:通讯录加好友
4002:搜索加公众号
4003:附近的人打招呼
4004:漂流瓶
4005:通讯录我的朋友自动添加
5000:好友群发消息
5001:好友群发图片
5002:好友逐个发消息（清僵尸粉）
5003:好友逐个发图片（清僵尸粉）
5004:好友逐个发小视频
5005:好友逐个发收藏
6000:微信群里发消息
6001:微信群里发小视频
6002:微信群里发名片
6003:微信群里发图片
6004:微信群里发收藏
6005:微信群里发红包
7000:浏览新闻
]]--

--writePasteboard("");

log("ActionReceiver|start");

showFloatButton(false);

while(true)
do

	local resultStrList = {};

	mSleep(5000);
	message = readPasteboard();  --读出剪贴板内容

	if (message ~= "") then
		string.gsub(message,'[^'..","..']+',function ( w )
			table.insert(resultStrList,w)
		end);

		scheduleId = resultStrList[1]; --获取任务ID
		action = resultStrList[2]; --获取命令编码

		log("任务ID:" .. scheduleId .. "|行为ID:" .. action .. " 开始执行");

		toast("任务ID:" .. scheduleId .. " 开始执行");
	
		mSleep(3000); --延迟3秒

		if ("200" == action) then --更新文件
			dolua_restart(); --重载脚本
		elseif ("1000" == action) then --登录
			login.login();
			writePasteboard("");
			HttpUtil.taskResponse(scheduleId, action);
		elseif("1001" == action) then --账号切换
			login.reLogin();
			writePasteboard("");
			HttpUtil.taskResponse(scheduleId, action);
		elseif("3001" == action) then --朋友圈发图文
			content = resultStrList[3];
			Moments.send(2, content);
			writePasteboard("");
			HttpUtil.taskResponse(scheduleId, action);
		elseif("3002" == action or "3003" == action) then --朋友圈发文,发链接
			content = resultStrList[3];
			Moments.send(1, content);
			writePasteboard("");
			HttpUtil.taskResponse(scheduleId, action);		
		elseif("3004" == action) then --朋友圈点赞
			num = resultStrList[3];
			Moments.dianZan(num);
			writePasteboard("");
			HttpUtil.taskResponse(scheduleId, action);
		elseif("3005" == action) then --朋友圈评论
			num = resultStrList[3];
			content = resultStrList[4];
			Moments.pingLun(num, content);
			writePasteboard("");
			HttpUtil.taskResponse(scheduleId, action);
		elseif("4000" == action) then --搜索加好友
			AddFriends.searchAdd();
			writePasteboard("");
			HttpUtil.taskResponse(scheduleId, action);
		elseif("4003" == action) then --附近人打招呼
			num = resultStrList[3];
			content = resultStrList[4];
			--NearFriends.sayToNearFriends(num, content);
			NearFriends.auToSayToNearFriends(num);
			writePasteboard("");
			HttpUtil.taskResponse(scheduleId, action);
		elseif("4005" == action) then --自动添加朋友[微X模块实现]
			--num = resultStrList[3];
			--AddFriends.accept(num);
			--writePasteboard("");
			--HttpUtil.taskResponse(scheduleId, action);
		elseif("5000" == action) then --好友-群发消息
			content = resultStrList[3];
			TongXunLu.sendMsgToAllfriends(content);
			writePasteboard("");
			HttpUtil.taskResponse(scheduleId, action);
		elseif("5001" == action) then --好友-群发图片
			writePasteboard("");
			HttpUtil.taskResponse(scheduleId, action);			
		elseif("6000" == action) then --微信群-发消息
			num = resultStrList[3];
			content = resultStrList[4];
			TongXunLu.sendMsgToGroup(num, content, 1);
			writePasteboard("");
			HttpUtil.taskResponse(scheduleId, action);
		elseif("6003" == action) then --微信群-发图片
			num = resultStrList[3];
			TongXunLu.sendMsgToGroup(num, "", 2);
			writePasteboard("");
			HttpUtil.taskResponse(scheduleId, action);	
		elseif("6006" == action) then --微信群-扫码加群
			num = resultStrList[3];
			Group.AddGroupByScan(num);
			writePasteboard("");
			HttpUtil.taskResponse(scheduleId, action);	
							
		elseif("7000" == action) then --浏览新闻
			News.viewNews();
			writePasteboard("");
			HttpUtil.taskResponse(scheduleId, action);
		elseif("9999" == action) then --退出程序
			writePasteboard("");
			HttpUtil.taskResponse(scheduleId, action);
			break;
		else
			--toast("-1");
		end;
		toast("任务ID:" .. scheduleId .. " 执行完成");
		log("任务ID:" .. scheduleId .. "|行为ID:" .. action .. " 执行完成");
	end;
--[[
	if (isFrontApp("") ~= 1) then
		writePasteboard("");
	end;
]]--
end;


