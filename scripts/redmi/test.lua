require "PageUtil";
require "AddFriends";
require "login";
require "Moments";
require "AppUtil";
--require "TongXunLu";
require "News";
require "Constants";
require "Group";


x,y = findMultiColorInRegionFuzzy( 0xbababa, "2|-4|0x363636,84|0|0x828282,150|8|0x353535,268|-2|0xffffff", 90,0, 0, 698, 1266)
--dialog("x="..x..";y="..y);
--dialog(y);
tap(x, y);


--Group.AddGroupByScan(5);

--PageUtil.pageWeiXin();
--PageUtil.pageContact();
--PageUtil.pageFind();
--PageUtil.pageMy();

--AddFriends.searchAdd();
--AddFriends.contactAdd();

--runApp("com.tencent.mm","com.tencent.mm.plugin.sns.ui.SnsTimeLineUI"  ) --朋友圈
--runApp("com.tencent.mm","com.tencent.mm.plugin.sns.ui.SnsMsgUI"  ) -- 朋友圈回复给我的消息
--runApp("com.tencent.mm","com.tencent.mm.plugin.sns.ui.SettingSnsBackgroundUI"  ) --  挑选图片或者拍照更换相册封面
--runApp("com.tencent.mm","com.tencent.mm.plugin.sns.ui.ArtistUI"  ) --   从摄影师作品挑选
--runApp("com.tencent.mm","com.tencent.mm.plugin.sns.ui.SnsTagUI"  ) -- 选择可见范围
--runApp("com.tencent.mm","com.tencent.mm.plugin.backup.ui.BakChatUI"  ) --  聊天记录备份和恢复
--runApp("com.tencent.mm","com.tencent.mm.plugin.backup.ui.BakChatRecoverCheckUI"  ) --  恢复聊天记录
--runApp("com.tencent.mm","com.tencent.mm.plugin.backup.ui.BakChatUploadSelectUI"  ) -- 备份聊天记录，选择联系人
--runApp("com.tencent.mm","com.tencent.mm.plugin.backup.ui.BakChatUploadingUI"  ) -- 上传聊天记录（上传中）
--runApp("com.tencent.mm","com.tencent.mm.plugin.backup.ui.BakChatRecoveringUI"  ) -- 下载聊天记录（下载中）
--runApp("com.tencent.mm","com.tencent.mm.plugin.backup.ui.BakchatSetCryptUI"  ) --对上传或者下载设置密码
--runApp("com.tencent.mm","com.tencent.mm.plugin.game.ui.GameCenterUI"   ) --  微信游戏相关
--runApp("com.tencent.mm","com.tencent.mm.plugin.nearby.ui.NearbyFriendsIntroUI"   ) -- 附近的人相关操作
--runApp("com.tencent.mm","com.tencent.mm.plugin.shake.ui.ShakePersonalInfoUI"   ) --摇一摇设置
--runApp("com.tencent.mm","com.tencent.mm.plugin.qqmail.ui.RoomInfoShareQrUI"   ) --  邮件相关
--runApp("com.tencent.mm","com.tencent.mm.plugin.mall.ui.MallIndexUI"   ) --  我的钱包相关
--runApp("com.tencent.mm","com.tencent.mm.ui.pluginapp.AddMoreFriendsUI") --  添加好友页面
--runApp("com.tencent.mm","com.tencent.mm.ui.contact.SayHiEditUI"   ) --  打招呼
--runApp("com.tencent.mm","com.tencent.mm.plugin.masssend.ui.MassSendSelectContactUI"   ) --  群发助手相关
--runApp("com.tencent.mm","com.tencent.mm.ui.openapi.AddAppUI"   ) -- 添加工具
--runApp("com.tencent.mm","com.tencent.mm.ui.qrcode.ShowQRCodeStep1UI"   ) --  分享二维码
--runApp("com.tencent.mm","com.tencent.mm.plugin.scanner.ui.BaseScanUI"   ) -- 扫描二维码
--runApp("com.tencent.mm","com.tencent.mm.plugin.bottle.ui.BottleWizardStep1" ) --漂流瓶第一步
--runApp("com.tencent.mm","com.tencent.mm.plugin.bottle.ui.BottleWizardStep2" ) --漂流瓶第二步
--runApp("com.tencent.mm","com.tencent.mm.plugin.bottle.ui.BottleBeachUI" ) --漂流瓶界面
--runApp("com.tencent.mm","com.tencent.mm.plugin.bottle.ui.BottleConversationUI" ) --我的瓶子
--runApp("com.tencent.mm","com.tencent.mm.plugin.bottle.ui.BottlePersonalInfoUI" ) --漂流瓶设置界面
--runApp("com.tencent.mm","com.tencent.mm.plugin.sns.ui.SnsUploadUI" ) --发送微信图文朋友圈
--runApp("com.tencent.mm","com.tencent.mm.plugin.sns.ui.SnsLongMsgUI" ) --发送微信文字朋友圈
--runApp("com.tencent.mm","com.tencent.mm.plugin.radar.ui.RadarSearchUI" ) --扫一扫
--runApp("com.tencent.mm","com.tencent.mm.plugin.nearby.ui.NearbySayHiListUI" ) --附近打招呼的人
--runApp("com.tencent.mm","com.tencent.mm.plugin.brandservice.ui.BrandServiceIndexUI" ) --微信公众号
--runApp("com.tencent.mm","com.tencent.mm.plugin.brandservice.ui.SearchOrRecommendBizUI") --搜索微信公众号
--runApp("com.tencent.mm","com.tencent.mm.plugin.masssend.ui.MassSendHistoryUI" ) --群发助手新建群
--runApp("com.tencent.mm","com.tencent.mm.plugin.sns.ui.SnsMsgUI" ) --朋友圈消息

--runApp("com.tencent.mm","com.tencent.mm.ui.contact.AddressUI" ) --error
--runApp("com.tencent.mm","com.tencent.mm.ui.contact.SelectContactUI" ) --error
--runApp("com.tencent.mm","com.tencent.mm.ui.contact.GroupCardSelectUI" ) --[通讯录]-[群聊界面]
--runApp("com.tencent.mm","com.tencent.mm.ui.pluginapp.FindMoreFriendsUI" ) --无反应
--runApp("com.tencent.mm","com.tencent.mm.ui.pluginapp.AddMoreFriendsUI" ) --无反应
--runApp("com.tencent.mm","com.tencent.mm.ui.friend.MobileFriendUI" ) --无反应
--runApp("com.tencent.mm","com.tencent.mm.ui.friend.ContactsSyncUI" ) --无反应
--runApp("com.tencent.mm","com.tencent.mm.ui.friend.FindMContactAddUI" ) --error
--runApp("com.tencent.mm","com.tencent.mm.ui.friend.FindMContactInviteUI" ) --error
--runApp("com.tencent.mm","com.tencent.mm.ui.LauncherUI" ) --微信首页
--runApp("com.tencent.mm","com.tencent.mm.ui.friend.FMessageConversationUI" ) --无反应
--runApp("com.tencent.mm","com.tencent.mm.plugin.gallery.ui.AlbumPreviewUI" ) --无反应
--runApp("com.tencent.mm","com.tencent.mm.plugin.subapp.ui.pluginapp.AddMoreFriendsByOtherWayUI" ) --[添加朋友][添加手机联系人]
--runApp("com.tencent.mm","com.tencent.mm.plugin.readerapp.ui.ReaderAppUI" ) --error
--runApp("com.tencent.mm","com.tencent.mm.plugin.readerapp.ui.ReaderAppIntroUI" ) --error 白界面
--runApp("com.tencent.mm","com.tencent.mm.plugin.setting.ui.setting.SettingsPluginsUI" ) --[功能]界面


--login.login();
--login.reLogin();

--Moments.send(2);
--Moments.dianZan();
--Moments.pingLun();

--TongXunLu.sendMsgTofriend();
--TongXunLu.sendMsgToGroup();

--News.viewNews();
--AddFriends.accept();

--dialog(math.random(0,150));


--[[
yy = 1180;

x, y = findImageInRegionFuzzy("tongxunlu_ql.png", 80, 314, 1200,448,1254, 0xffffff);

if ((x ~= -1 and y ~= -1) and isColor( 514,  1220, 0xebebeb, 95) and yy >= 1150) then
	dialog("fhafwefwfewf");
end;
]]--

--[[
					touchDown(230,1125);

					for i = 1125, 80, -10 do
						touchMove(230, i);
						mSleep(150);        --延迟
					end

					touchUp(230,1025);

			]]--

--pressHomeKey();

--mSleep(3000);

--AppUtil.run();

--log("x=" .. tostring(123) .. "|y=" .. tostring(456) );


--[[
x, y = findImageInRegionFuzzy("jt.png", 80, 562, 1014, 712, 1258, 0xffffff);
if x ~= -1 and y ~= -1 then        --如果在指定区域找到某图片符合条件
dialog(x);
    touchDown(x, y);            --那么单击该图片
    mSleep(30);
    touchUp(x, y);
else                               --如果找不到符合条件的图片
    dialog("未找到符合条件的坐标！",0);
end

dialog("12314");


width, height = getScreenSize();
if width == 1080 and height == 1920 then
    --小米4 华为荣耀6p
	dialog("width=" .. tostring(width) .. "|height=" .. tostring(height) );
elseif width == 720 and height == 1280 then
    --红米note2
	dialog("width=" .. tostring(width) .. "|height=" .. tostring(height) );
elseif width == 768 and height == 1280 then
    --魅蓝
	dialog("width=" .. tostring(width) .. "|height=" .. tostring(height) );
elseif width == 800 and height == 1280 then
    --三星N5100
	dialog("width=" .. tostring(width) .. "|height=" .. tostring(height) );
elseif width == 480 and height == 800 then
    --酷派8017-T00
	dialog("width=" .. tostring(width) .. "|height=" .. tostring(height) );
end

]]--


--sqlite3 = require "luasql.sqlite3";
--local env  = sqlite3.sqlite3();
--local conn = env:connect('/data/data/com.hp.wxcontrol/databases/wxcontrol.db');
--dialog(env);

--[[
local resultStrList = {};
action = readPasteboard();  --读出剪贴板内容
if (action ~= "") then

		string.gsub(action,'[^'..","..']+',function ( w )
			table.insert(resultStrList,w)
		end);

		dialog(resultStrList[1]);
		dialog(resultStrList[2]);
end;
		dialog(resultStrList[2]);

]]--
