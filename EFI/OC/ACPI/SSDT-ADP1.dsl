/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200110 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLBot98R.aml, Thu Sep 16 01:19:48 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000004C (76)
 *     Revision         0x02
 *     Checksum         0xE8
 *     OEM ID           "hack"
 *     OEM Table ID     "ADP1"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20161210 (538317328)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "ADP1", 0x00000000)
{
    External (_SB_.ADP1, DeviceObj)

    If (_OSI ("Darwin"))
    {
        Scope (\_SB.ADP1)
        {
            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
            {
                0x18, 
                0x03
            })
        }
    }
}

