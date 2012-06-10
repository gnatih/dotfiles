---------------------------
-- Default awesome theme --
---------------------------

theme = {}

theme.font          = "terminus 9"

theme.bg_normal     = "#1a1918"
theme.bg_focus      = "#1a1918"
theme.bg_urgent     = "#b23535"
theme.bg_minimize   = "#1a1918"

theme.fg_normal     = "#807b76"
theme.fg_focus      = "#9acd32"
theme.fg_urgent     = "#b2b2b2"
theme.fg_minimize   = "#333231"

theme.border_width  = "1"
theme.border_normal = "#050505"
theme.border_focus  = "#333231"
theme.border_marked = "#a4a4a4"

-- ICONS
theme.widget_net = "/home/kartik/.config/awesome/icons/down18.png"
theme.widget_netup = "/home/kartik/.config/awesome/icons/up18.png"
theme.widget_battery = "/home/kartik/.config/awesome/icons/bat18.png"
theme.widget_wifi = "/home/kartik/.config/awesome/icons/wifi18.png"

-- TAGLIST
theme.taglist_squares_sel   = "/home/kartik/.config/awesome/themes/kartik/taglist/squarefw.png"
theme.taglist_squares_unsel = "/home/kartik/.config/awesome/themes/kartik/taglist/squarew.png"

-- MENU
theme.menu_submenu_icon = "/home/kartik/.config/awesome/themes/kartik/submenu.png"
theme.menu_height = "14"
theme.menu_width  = "100"

-- WALLPAPER
theme.wallpaper_cmd = { "awsetbg /home/kartik/.wallpaper.png" }

return theme
