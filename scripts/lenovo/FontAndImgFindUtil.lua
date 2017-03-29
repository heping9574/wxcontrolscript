
FontAndImgFindUtil = {}

--寻找屏幕中间打招呼按钮
function FontAndImgFindUtil.center_daZhaoHu()
    x,y = findMultiColorInRegionFuzzy(
        0x1aad19, "80|56|0x1aad19,176|16|0x1aad19,84|-14|0x1aad19", 90, 200, 730, 530, 1200);
    if x ~= -1 and y ~= -1 then
        return x, y;
    else
        return -1, -1;
    end;
end;

--寻找wxControl文件夹
function FontAndImgFindUtil.wxControlDir()
    x,y = findMultiColorInRegionFuzzy( 0x353535, "10|0|0x353535,26|-2|0x404040,52|-8|0x353535,98|-6|0x555555", 90, 180, 430, 430, 1160);
    if x ~= -1 and y ~= -1 then
        return x, y;
    else
        return -1, -1;
    end;
end;

--寻找腾讯新闻腾讯字
function FontAndImgFindUtil.qqNews()
	--x,y = findMultiColorInRegionFuzzy( 0xffd801, "14|2|0x00a4e3,28|-8|0x2fb046,20|16|0xe50a13", 90, 10, 400, 120, 710);
    x,y = findMultiColorInRegionFuzzy( 0x353535, "10|0|0x353535,16|0|0x353535,24|4|0x353535,34|0|0xadadad", 90, 10, 400, 300, 740)
    if x ~= -1 and y ~= -1 then
        return x, y;
    else
        return -1, -1;
    end;
end;

--朋友圈界面
function FontAndImgFindUtil.isMoments()
    x,y = findMultiColorInRegionFuzzy( 0xffffff, "-2|26|0xffffff,14|14|0xffffff,22|28|0xfafafa,44|-2|0xe8e8e8", 90, 70, 50, 250, 170);
    if x ~= -1 and y ~= -1 then
        return x, y;
    else
        return -1, -1;
    end;
end;

return FontAndImgFindUtil;