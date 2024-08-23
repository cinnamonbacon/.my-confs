import XMonad

import XMonad.Util.EZConfig
import XMonad.Util.Ungrab

import XMonad.Layout.ThreeColumns

import XMonad.Hooks.EwmhDesktops
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.StatusBar
import XMonad.Hooks.StatusBar.PP


main :: IO ()
main = xmonad $ ewmhFullscreen $ ewmh $ xmobarProp $ def
    { modMask = mod4Mask
    , terminal = "kitty"
    }
   `additionalKeysP`
    [ ("M-C-s", unGrab *> spawn "scrot -s")
    , ("M-f", spawn "firefox")
    ]

