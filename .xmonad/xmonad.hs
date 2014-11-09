import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Config.Desktop
import XMonad.Config.Xfce
import XMonad.Layout.NoBorders

myNormalBorderColor  = "#666666"
myFocusedBorderColor = "#aaaaaa"

main = xmonad defaults

layout = desktopLayoutModifiers $ smartBorders tiled ||| Mirror tiled ||| Full
  where
    tiled = Tall nmaster delta ratio
    nmaster = 1
    ratio = 6/12
    delta = 1/12

defaults = xfceConfig {
    normalBorderColor  = myNormalBorderColor,
    focusedBorderColor = myFocusedBorderColor,
    terminal           = "gnome-terminal",
    modMask            = mod4Mask,
    layoutHook         = layout,
    borderWidth        = 2
}
