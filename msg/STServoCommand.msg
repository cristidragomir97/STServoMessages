# STServoCommand.msg
#
# Command message for controlling an ST servo.
# This message supports both servo (position) mode and motor (continuous rotation) mode.
#
std_msgs/Header header
uint8 id             # Servo identifier
uint8 mode           # Command mode: 0 = servo (position) mode, 1 = motor (continuous) mode
int32 target         # For mode 0: target position (raw count, e.g., 0–4096)
                     # For mode 1: target speed (raw speed units, e.g., -4096 to 4096)
bool torque_enable   # Enable (true) or disable (false) torque
