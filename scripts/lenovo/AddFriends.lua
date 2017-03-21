require "PageUtil";

AddFriends = {}

--搜索加好友

function AddFriends.searchAdd()

	PageUtil.searchFriends(); --定位到添加好友界面

	--if multiColor({{46,  226, 0x3fb838},{70,  244, 0x3fb838},{80,  256, 0x3fb838}}) == true then

	--寻找搜索小图标
	x,y = findMultiColorInRegionFuzzy( 0x3fb838, "10|-8|0xffffff,30|2|0x8ad485,82|-6|0xc9c9c9", 90, 10, 180, 140, 300);
	if x~=-1 and y ~=-1 then
		tap(x, y);

		mSleep(3500);
		inputText("13146451976"); --输入微信号
		mSleep(3000);

		--if multiColor({{36,  168, 0x2ba245},{82,  216, 0xffffff},{106,  238, 0x2ba245}}) == true then
		--寻找搜索按钮
		x,y = findMultiColorInRegionFuzzy( 0x2ba245, "20|30|0xcbe8d1,58|52|0xffffff,114|28|0x353535", 90, 10, 140, 190, 300);
		if x ~= -1 and y ~= -1 then
			tap(x, y); --点击搜索按钮
		end;

	else

	end;


end;

--通讯录加好友
function AddFriends.contactAdd()

	PageUtil.pageContact();

	mSleep(2000);

	tap(Constants.tongxunlu_newfriend_x, Constants.tongxunlu_newfriend_y); --点击[通讯录]-[新的朋友]按钮

	mSleep(2000);

	tap(Constants.upperright_x, Constants.upperright_y); --点击[通讯录]-[新的朋友]-[添加朋友]按钮

	mSleep(2000);

	tap(Constants.tongxunlu_newfriend_mc_x, Constants.tongxunlu_newfriend_mc_y);--点击[通讯录]-[新的朋友]-[添加朋友]-[手机联系人]按钮

	mSleep(1000);

	tap(Constants.tongxunlu_newfriend_mc_m_x, Constants.tongxunlu_newfriend_mc_m_y);--点击[通讯录]-[新的朋友]-[添加朋友]-[手机联系人]-[添加手机联系人]按钮

	mSleep(10000); --此处加载手机联系人时间比较长


end;

--通讯录-新的朋友-自动添加
function AddFriends.accept()

	PageUtil.pageContact();

	mSleep(2000);

	tap(Constants.tongxunlu_newfriend_x, Constants.tongxunlu_newfriend_y); --点击[通讯录]-[新的朋友]按钮

	mSleep(2000);

	flag = false; --标识第一个用户是否添加失败

	while(true)
	do

		if(flag == false) then

			if multiColor({{602,  412, 0x1aad19},{  592,  408, 0x1aad19},{  680,  412, 0x1aad19}}) == true then
				tap(600, 410);
				mSleep(2000);
				if (isUpperRightButton()) then
					mSleep(2000);
					tap(Constants.upperright_x, Constants.upperright_y);
					mSleep(10000);
					--如果添加好友失败,还是停留在当前页面,点击右上角箭头返回
					if (isUpperRightButton()) then
						flag = true; --标识用户添加失败
						tap(Constants.upperleft_x, Constants.upperleft_y);
						mSleep(5000);
					else
						flag = false;
					end;
				end;
			else
				--dialog("555");
				flag = false;
				mSleep(2000);
				tap(Constants.upperleft_x, Constants.upperleft_y);
				break;
			end;
		else
			--长按好友弹出删除框,进行删除
			touchDown(200, 410);
			mSleep(3000);
			touchUp(200, 410);
			mSleep(2500);
			tap(300, 660); --点出弹出的删除框
			flag = false;
			mSleep(3000);
		end;
	end;

end;

--检查右上角是否是完成按钮
function isUpperRightButton()
	if (isColor( 556,   92, 0x393a3f, 85) and isColor( 602,   98, 0x1aad19, 85) and isColor( 690,   94, 0x1aad19, 85)) then
		return true;
	else
		return false;
	end;
end;

return AddFriends;
