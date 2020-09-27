class: CommandLineTool
id: csharp.cwl
inputs:
- id: in_about
  doc: About the Mono C# compiler
  type: boolean
  inputBinding:
    prefix: --about
- id: in_addmodule
  doc: :M1[,Mn]   Adds the module to the generated assembly
  type: boolean
  inputBinding:
    prefix: -addmodule
- id: in_checked
  doc: '[+|-]        Sets default aritmetic overflow context'
  type: boolean
  inputBinding:
    prefix: -checked
- id: in_cls_check
  doc: '[+|-]       Disables CLS Compliance verifications'
  type: boolean
  inputBinding:
    prefix: -clscheck
- id: in_codepage
  doc: :ID         Sets code page to the one in ID (number, utf8, reset)
  type: boolean
  inputBinding:
    prefix: -codepage
- id: in_define
  doc: ':S1[;S2]      Defines one or more conditional symbols (short: -d)'
  type: boolean
  inputBinding:
    prefix: -define
- id: in_debug
  doc: '[+|-], -g      Generate debugging information'
  type: boolean
  inputBinding:
    prefix: -debug
- id: in_delay_sign
  doc: '[+|-]      Only insert the public key into the assembly (no signing)'
  type: boolean
  inputBinding:
    prefix: -delaysign
- id: in_doc
  doc: :FILE            Process documentation comments to XML file
  type: boolean
  inputBinding:
    prefix: -doc
- id: in_full_paths
  doc: Any issued error or warning uses absolute file path
  type: boolean
  inputBinding:
    prefix: -fullpaths
- id: in_key_container
  doc: :NAME   The key pair container used to sign the output assembly
  type: boolean
  inputBinding:
    prefix: -keycontainer
- id: in_keyfile
  doc: :FILE        The key file used to strongname the ouput assembly
  type: boolean
  inputBinding:
    prefix: -keyfile
- id: in_lang_version
  doc: ':TEXT    Specifies language version: ISO-1, ISO-2, 3, 4, 5, Default or Experimental'
  type: boolean
  inputBinding:
    prefix: -langversion
- id: in_lib
  doc: :PATH1[,PATHn]   Specifies the location of referenced assemblies
  type: boolean
  inputBinding:
    prefix: -lib
- id: in_main
  doc: ':CLASS          Specifies the class with the Main method (short: -m)'
  type: boolean
  inputBinding:
    prefix: -main
- id: in_no_config
  doc: Disables implicitly referenced assemblies
  type: boolean
  inputBinding:
    prefix: -noconfig
- id: in_nostdlib
  doc: '[+|-]       Does not reference mscorlib.dll library'
  type: boolean
  inputBinding:
    prefix: -nostdlib
- id: in_nowarn
  doc: :W1[,Wn]      Suppress one or more compiler warnings
  type: boolean
  inputBinding:
    prefix: -nowarn
- id: in_optimize
  doc: '[+|-]       Enables advanced compiler optimizations (short: -o)'
  type: boolean
  inputBinding:
    prefix: -optimize
- id: in_out
  doc: :FILE            Specifies output assembly name
  type: File
  inputBinding:
    prefix: -out
- id: in_pkg
  doc: :P1[,Pn]         References packages P1..Pn
  type: boolean
  inputBinding:
    prefix: -pkg
- id: in_platform
  doc: ":ARCH       Specifies the target platform of the output assembly\nARCH can\
    \ be one of: anycpu, anycpu32bitpreferred, arm,\nx86, x64 or itanium. The default\
    \ is anycpu."
  type: boolean
  inputBinding:
    prefix: -platform
- id: in_recurse
  doc: :SPEC        Recursively compiles files according to SPEC pattern
  type: boolean
  inputBinding:
    prefix: -recurse
- id: in_sdk
  doc: ":VERSION         Specifies SDK version of referenced assemblies\nVERSION can\
    \ be one of: 2, 4, 4.5 (default) or a custom value"
  type: boolean
  inputBinding:
    prefix: -sdk
- id: in_target
  doc: ":KIND         Specifies the format of the output assembly (short: -t)\nKIND\
    \ can be one of: exe, winexe, library, module"
  type: boolean
  inputBinding:
    prefix: -target
- id: in_unsafe
  doc: '[+|-]         Allows to compile code which uses unsafe keyword'
  type: boolean
  inputBinding:
    prefix: -unsafe
- id: in_warn
  doc: :0-4            Sets warning level, the default is 4 (short -w:)
  type: boolean
  inputBinding:
    prefix: -warn
- id: in_help_internal
  doc: Shows internal and advanced compiler options
  type: boolean
  inputBinding:
    prefix: -helpinternal
- id: in_link_resource
  doc: ':FILE[,ID] Links FILE as a resource (short: -linkres)'
  type: boolean
  inputBinding:
    prefix: -linkresource
- id: in_resource
  doc: ':FILE[,ID]     Embed FILE as a resource (short: -res)'
  type: boolean
  inputBinding:
    prefix: -resource
- id: in_win_three_two_res
  doc: :FILE          Specifies Win32 resource file (.res)
  type: boolean
  inputBinding:
    prefix: -win32res
- id: in_win_three_two_icon
  doc: :FILE         Use this icon for the output
  type: File
  inputBinding:
    prefix: -win32icon
- id: in_at_file
  doc: Read response file for more options
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: :FILE            Specifies output assembly name
  type: File
  outputBinding:
    glob: $(inputs.in_out)
- id: out_win_three_two_icon
  doc: :FILE         Use this icon for the output
  type: File
  outputBinding:
    glob: $(inputs.in_win_three_two_icon)
cwlVersion: v1.1
baseCommand:
- csharp
