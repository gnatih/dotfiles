--- rc.lua	2011-11-26 18:21:50.000000000 +0530
+++ rc.lua.bak	2011-11-25 00:26:19.000000000 +0530
@@ -413,38 +413,23 @@
 	end, refresh_delay, "eth0")
 
 -- wlan0
-wifiupwidget = widget({ type = "textbox" })
-	vicious.register(wifiupwidget, vicious.widgets.net, "" .. colblk .. "up " .. coldef .. colbblk .. "${wlan0 up_kb} " .. coldef ..     "")
+netwupwidget = widget({ type = "textbox" })
+	vicious.register(netwupwidget, vicious.widgets.net, "<span color='#60801f'></span><span color='#9acd32'>${wlan0 up_kb} </span>")
 
-wifidownwidget = widget({ type = "textbox" })
-	vicious.register(wifidownwidget, vicious.widgets.net, "" .. colblk .. "down " .. coldef .. colbblk .. "${wlan0 down_kb} " .. coldef .. "")
+netwdownwidget = widget({ type = "textbox" })
+	vicious.register(netwdownwidget, vicious.widgets.net, "<span color='#60801f'></span><span color='#9acd32'>${wlan0 down_kb} </span>")
 
 wifiwidget = widget({ type = "textbox" })
 	vicious.register(wifiwidget, vicious.widgets.wifi,
 	function (widget, args)
-			function ip_addr()
-				local ip = io.popen("ip addr show wlan0 | grep 'inet '")
-				local addr = ip:read("*a")
-				ip:close()
-				addr = string.match(addr, "%d+.%d+.%d+.%d+")
-				return addr
-			end
 		if args["{link}"] == 0 then
-			wifidownwidget.visible = false
-			wifiupwidget.visible = false
-			upicon.visible = false
-			downicon.visible = false
+			netwdownwidget.visible = false
+			netwupwidget.visible = false
 			return ""
 		else
-			wifidownwidget.visible = true
-			wifiupwidget.visible = true
-			if args["{link}"]/70*100 <= 50 then
-				return "" .. colblk .. "wlan " .. coldef .. colbblk .. ip_addr() .. coldef .. colblk .. " on " .. coldef .. colbblk .. args["{ssid}"] .. coldef .. colred .. " at " .. coldef .. colbred .. string.format("[%i%%]", args["{link}"]/70*100) .. coldef .. " "
-			elseif args["{link}"]/70*100 > 50 and args["{link}"]/70*100 <=75 then
-				return "" .. colblk .. "wlan " .. coldef .. colbblk .. ip_addr() .. coldef .. colblk .. " on " .. coldef .. colbblk .. args["{ssid}"] .. coldef .. colyel .. " at " .. coldef .. colbyel .. string.format("[%i%%]", args["{link}"]/70*100) .. coldef .. " "
-			else
-				return "" .. colblk .. "wlan " .. coldef .. colbblk .. ip_addr() .. coldef .. colblk .. " on " .. coldef .. colbblk .. args["{ssid}"] .. coldef .. colblk .. " at " .. coldef .. colbblk .. string.format("[%i%%]", args["{link}"]/70*100) .. coldef .. " "
-			end
+			netwdownwidget.visible = true
+			netwupwidget.visible = true
+			return "<span color='#60801f'></span><span color='#9acd32'>" .. string.format("%s [%i%%]", args["{ssid}"], args["{link}"]/70*100) .. " </span>"
 		end
 	end, refresh_delay, "wlan0" )
 
