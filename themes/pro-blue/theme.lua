local gears = require("gears")
local wibox = require("wibox")

local taglist_types = {
   "triangles",        -- 1
}

local chosen_taglist_type = taglist_types[1]
local theme           = {}
home_dir              = os.getenv("HOME")
theme.dir             = home_dir .. "/.config/awesome/themes/pro-blue"

theme.awesome_icon    = "/usr/share/awesome/icons/awesome16.png"
theme.icons           = theme.dir .. "/icons"
theme.wallpaper       = theme.dir .. "/wallpapers/vladstudio_firstsnow.jpg"
theme.panel           = "png:" .. theme.icons .. "/panel/panel.png"
theme.font            = "MesloLGM Nerd Font Regular 12"
theme.icon_theme      = "Faenza-Dark"
theme.icon_path       = "/usr/share/icons/Faenza-Dark/apps/16/"

theme.fg_normal  = "#B5FAFF"
theme.fg_icon    = "#2D5DAF"
theme.fg_focus   = "#84bfbc"
theme.fg_urgent  = "#84bfbc"
theme.bat_fg_critical   = "#232323"

theme.bg_normal  = "#0a0f14"
theme.bg_focus   = "#1a4b5c"
theme.bg_urgent  = "#3F3F3F"
theme.bg_systray = "#0d1217"
theme.bat_bg_critical   = "#ff0000"
-- theme.bg_systray = "#000000" .. 0.01 -- transparent tray fix 

-- Borders
theme.border_width                              = 2
theme.border_normal                             = "#3F3F3F"
theme.border_focus                              = "#6F6F6F"
theme.border_marked                             = "#CC9393"

-- Menu
theme.menu_height = 16
theme.menu_width  = 160

-- Notifications
theme.notification_font                         = "MesloLGM Nerd Font Regular 12"
theme.notification_bg                           = "#232323"
theme.notification_fg                           = "#e4e4e4"
theme.notification_border_width                 = 0
theme.notification_border_color                 = "#232323"
theme.notification_shape                        = gears.shape.infobubble

theme.notification_opacity                      = 1
theme.notification_margin                       = 30

-- Layout

theme.layout_floating   = theme.icons .. "/panel/layouts/floating.png"
theme.layout_tile       = theme.icons .. "/panel/layouts/tile.png"
theme.layout_tileleft   = theme.icons .. "/panel/layouts/tileleft.png"
theme.layout_tilebottom = theme.icons .. "/panel/layouts/tilebottom.png"
theme.layout_tiletop    = theme.icons .. "/panel/layouts/tiletop.png"

-- Taglist

theme.taglist_bg_empty    = "png:" .. theme.icons .. "/panel/taglist/" .. chosen_taglist_type .. "/empty.png"
theme.taglist_bg_occupied = "png:" .. theme.icons .. "/panel/taglist/" .. chosen_taglist_type .. "/occupied.png"
theme.taglist_bg_urgent   = "png:" .. theme.icons .. "/panel/taglist/" .. chosen_taglist_type .. "/urgent.png"
theme.taglist_bg_focus    = "png:" .. theme.icons .. "/panel/taglist/" .. chosen_taglist_type .. "/focus.png"
theme.taglist_font        = "Terminus 11"


-- Tasklist

theme.tasklist_font                 = "Terminus 8"
theme.tasklist_disable_icon         = true
theme.tasklist_bg_normal            = "png:" .. theme.icons .. "/panel/tasklist/normal.png"
theme.tasklist_bg_focus             = "png:" .. theme.icons .. "/panel/tasklist/focus.png"
theme.tasklist_bg_urgent            = "png:" .. theme.icons .. "/panel/tasklist/urgent.png"
theme.tasklist_fg_focus             = "#addedb"
theme.tasklist_fg_urgent            = "#99d1ce"
theme.tasklist_fg_normal            = "#99d1ce"
theme.tasklist_floating             = ""
theme.tasklist_sticky               = ""
theme.tasklist_ontop                = ""
theme.tasklist_maximized_horizontal = ""
theme.tasklist_maximized_vertical   = ""

-- Widget

theme.widget_display   = theme.icons .. "/panel/widgets/display/widget_display.png"
theme.widget_display_r = theme.icons .. "/panel/widgets/display/widget_display_r.png"
theme.widget_display_c = theme.icons .. "/panel/widgets/display/widget_display_c.png"
theme.widget_display_l = theme.icons .. "/panel/widgets/display/widget_display_l.png"

-- Separators

theme.spr    = theme.icons .. "/panel/separators/spr.png"
theme.sprtr  = theme.icons .. "/panel/separators/sprtr.png"
theme.spr4px = theme.icons .. "/panel/separators/spr4px.png"
theme.spr5px = theme.icons .. "/panel/separators/spr5px.png"

-- Clock / Calendar
theme.widget_clock = wibox.widget({
      markup = '<span color="#2D5DAF"> </span>',
      font = theme.font,
      widget = wibox.widget.textbox
})

theme.widget_cal   = wibox.widget({
      markup = '<span color="#2D5DAF"></span>',
      font = theme.font,
      widget = wibox.widget.textbox
})

-- CPU
theme.widget_cpu = wibox.widget({
      markup = '<span color="#2D5DAF">爛</span>',
      font = theme.font,
      widget = wibox.widget.textbox
})

-- CPU Temp
theme.widget_cpu_temperature = wibox.widget({
      markup = '<span color="#2D5DAF"></span>',
      font = theme.font,
      widget = wibox.widget.textbox
})

-- MEM
theme.widget_mem = wibox.widget({
      markup = '<span color="#2D5DAF">﬙</span>',
      font = theme.font,
      widget = wibox.widget.textbox
})

-- FS
theme.widget_fs = wibox.widget({
      markup = '<span color="#2D5DAF"></span>',
      font = theme.font,
      widget = wibox.widget.textbox
})

-- NET
theme.widget_net = wibox.widget({
      markup = '<span color="#2D5DAF"></span>',
      font = theme.font,
      widget = wibox.widget.textbox
})

theme.widget_netdl = wibox.widget({
      markup = '<span color="#2D5DAF"></span>',
      font = theme.font,
      widget = wibox.widget.textbox
})

theme.widget_netul = wibox.widget({
      markup = '<span color="#2D5DAF"></span>',
      font = theme.font,
      widget = wibox.widget.textbox
})

-- APW
theme.widget_volume = wibox.widget({
      markup = '<span color="#2D5DAF"></span>',
      font = theme.font,
      widget = wibox.widget.textbox
})

theme.apw_fg_color = {
   type = 'linear',
   from = {0, 0},
   to = {40,0},
   stops = {
      {0, theme.fg_icon},
      {.9, theme.fg_normal}
   }
}
theme.apw_bg_color = theme.bg_normal
theme.apw_mute_fg_color = "#CC9393"
theme.apw_mute_bg_color = "#663333"

-- Misc
theme.menu_submenu_icon = theme.icons .. "/submenu.png"

-- Titlebar
theme.titlebar_close_button_focus               = theme.dir .. "/icons/titlebar/close_focus.png"
theme.titlebar_close_button_normal              = theme.dir .. "/icons/titlebar/close_normal.png"

theme.titlebar_ontop_button_focus_active        = theme.dir .. "/icons/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active       = theme.dir .. "/icons/titlebar/ontop_normal_active.png"

theme.titlebar_ontop_button_focus_inactive      = theme.dir .. "/icons/titlebar/ontop_focus_inactive.svg"
theme.titlebar_ontop_button_normal_inactive     = theme.dir .. "/icons/titlebar/ontop_normal_inactive.svg"

theme.titlebar_sticky_button_focus_active       = theme.dir .. "/icons/titlebar/sticky_focus_active.svg"
theme.titlebar_sticky_button_normal_active      = theme.dir .. "/icons/titlebar/sticky_normal_active.svg"

theme.titlebar_sticky_button_focus_inactive     = theme.dir .. "/icons/titlebar/sticky_focus_inactive.svg"
theme.titlebar_sticky_button_normal_inactive    = theme.dir .. "/icons/titlebar/sticky_normal_inactive.svg"

theme.titlebar_floating_button_focus_active     = theme.dir .. "/icons/titlebar/floating_focus_active.svg"
theme.titlebar_floating_button_normal_active    = theme.dir .. "/icons/titlebar/floating_normal_active.svg"

theme.titlebar_floating_button_focus_inactive   = theme.dir .. "/icons/titlebar/floating_focus_inactive.svg"
theme.titlebar_floating_button_normal_inactive  = theme.dir .. "/icons/titlebar/floating_normal_inactive.svg"

theme.titlebar_maximized_button_focus_active    = theme.dir .. "/icons/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active   = theme.dir .. "/icons/titlebar/maximized_normal_active.png"

theme.titlebar_maximized_button_focus_inactive  = theme.dir .. "/icons/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = theme.dir .. "/icons/titlebar/maximized_normal_inactive.png"

return theme

