STM32 BLE Peer-to-Peer LED Control
AIM

To configure BLE (Bluetooth Low Energy) Peer-to-Peer communication and control an onboard LED using a mobile application with the STM32 Discovery Kit.

Project Overview

This project demonstrates how to establish BLE Peer-to-Peer communication between an STM32 Discovery Kit and a mobile device. The implementation enables wireless control of an onboard LED through a BLE-enabled mobile application, illustrating low-power wireless communication commonly used in IoT and embedded edge-node systems.

The STM32 acts as a BLE peripheral device, advertising custom BLE services and characteristics that allow a smartphone application to send commands for LED control.

Features
BLE Peer-to-Peer communication
Wireless onboard LED control
Mobile application integration
Custom BLE services and characteristics
STM32 HAL and BLE stack implementation
STM32CubeIDE compatible project
Real-time wireless embedded control
Hardware Requirements
STM32 Discovery Kit with BLE support
Smartphone with Bluetooth capability
USB Cable for programming and power
Software Requirements
STM32CubeIDE
STM32CubeMX
ST BLE Toolbox Mobile App or any compatible BLE scanner application
Working Principle
System clock and BLE stack are initialized.
The STM32 configures BLE advertising and creates custom services.
The mobile application scans and connects to the STM32 device.
BLE characteristics are used to send LED control commands.
The STM32 receives BLE data packets from the mobile device.
Based on received commands, the onboard LED is turned ON or OFF.
The BLE connection remains active for continuous wireless communication.
Applications
Smart home automation
Wireless embedded control systems
IoT edge-node communication
BLE-based monitoring systems
Mobile-controlled embedded devices
