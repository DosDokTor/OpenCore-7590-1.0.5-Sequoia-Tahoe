/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200110 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASL2aIBSC.aml, Thu Sep 16 01:21:20 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000076 (118)
 *     Revision         0x02
 *     Checksum         0x5E
 *     OEM ID           "ACDT"
 *     OEM Table ID     "ps2"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200110 (538968336)
 */
DefinitionBlock ("", "SSDT", 2, "ACDT", "ps2", 0x00000000)
{
    External (_SB_.PCI0.LPCB.PS2K, DeviceObj)
    
    If (_OSI ("Darwin"))
    {
        Name (_SB.PCI0.LPCB.PS2K.RMCF, Package (0x02)
        {
            "Keyboard", 
            Package (0x02)
            {
                "RemapPrntScr", 
                ">y"
            }
        })
    }
}

