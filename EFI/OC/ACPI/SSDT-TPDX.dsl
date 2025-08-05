/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200110 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLia6Y2u.aml, Thu Dec 31 10:21:45 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000055 (85)
 *     Revision         0x02
 *     Checksum         0x8C
 *     OEM ID           "hack"
 *     OEM Table ID     "TPDX"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
// Enable TPD0 GPIO pinning
// Patch: Rename USTP to One
// Find: 55 53 54 50 10
// Replace: 01 A3 A3 A3 10
// References:
// [1] https://github.com/xxxzc/xps15-9550-macos/issues/26#issuecomment-546838295
// [2] https://github.com/daliansky/OC-little/tree/master/09-OCI2C-TPXX%E8%A1%A5%E4%B8%81%E6%96%B9%E6%B3%95
// [3] https://github.com/alexandred/VoodooI2C/blob/master/Documentation/GPIO%20Pinning.md

DefinitionBlock ("", "SSDT", 2, "hack", "TPDX", 0x00000000)
{
    External (GPLI, FieldUnitObj)
    External (TPDM, FieldUnitObj)
    External (TPLM, FieldUnitObj)
//    External (TPLT, FieldUnitObj)

    Scope (\)
    {
        If (_OSI ("Darwin"))
        {
//            TPLT = Zero
            TPDM = Zero // enable GPIO mode for touchpad
            TPLM = Zero // enable GPIO mode for touchscreen
            GPLI = 0x1B // change touchscreen's GPIO pin to 0x1B [4]
        }
    }
}
