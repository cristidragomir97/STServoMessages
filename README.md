# st_servo_messages

**st_servo_messages** is a ROS 2 package that defines custom message types for controlling STxxxx servos such as the ST3215. 
These messages abstract the servo functionality and allow you to command servos and receive feedback using standard ROS 2 message interfaces.

## Message Definitions

### STServoCommand.msg
This message is used for commanding a servo.
```ros
std_msgs/Header header
uint8 id            # Servo identifier
int32 target        # Target raw position (0–4096)
bool torque_enable  # Torque enable flag

### STServoFeedback.msg
This message is used for receiving feedback from a servo.

ros
Copy
std_msgs/Header header
uint8 id          # Servo identifier
int32 position    # Raw position (0–4096)
int16 speed       # Raw speed value
int16 load        # Raw load value
float32 voltage   # Input voltage in volts