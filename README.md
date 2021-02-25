# TrimHat for X-Plane

This is a very small plugin that aims to do one thing, and one thing only: allow you to set pitch and yaw trim using the hat switch on your joystick. This isn't my idea, but something that the lovely folks [building the freeware Bell 429][bell429] included in their helicopter and that I found incredibly useful. The way it works is simple:

1. bind a button or key to the `amyinorbit/trimhat/trim`.
2. hold that button or key.
3. `sim/general/hat_switch_*` commands are intercepted, and used to fire `sim/flight_controls/pitch_trim_*` and `sim/flight_controls/rudder_trim_*`
4. release the button or key, and you can pan your view again

That's it. Feel free to fork and add functionality if you so want!

[bell429]: https://forums.x-plane.org/index.php?/files/file/39708-bell-429-wlg/