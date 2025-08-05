OpenCore 1.0.5 MOD / DELL XPS 7590 / DOSCONFIDENTIAL
This EFI folder contains a packaged OpenCore bootloader with the
proper configuration to run MacOS Sequoia and the latest Tahoe
Beta.

//DO NOT USE on AMD SYSTEMS, it may lead to GPU crashes/failure,
It loads custom registers for enabling OLED screens on MacOS
when passing control to DARWIN, which, if loaded on anything 
other than a HD5xx/6xx or UHD5xx/6xx may not boot at best
or cause the eDP output to reverse it's GPIO, rendering any
LCD useless. DO NOT USE on non-OLED SYSTEMS//

What's working:
WiFi: Download https://github.com/OpenIntelWireless/HeliPort
Audio
Full GPU Acceleration (iGPU)
OLED Brightness Control: Download https://lunar.fyi/
Camera
Microphone
Everything expected to work normally

What's NOT working:
OLED Sleep (you can't enable sleep on OLED screens, they will not power back on,
must be initialized at boot)
Bluetooth (not included yet)
You tell me. 

If you want bluetooth or sidecar to be added, you let me know, they're a kext away.

Screenshots are in the Extra folder.



