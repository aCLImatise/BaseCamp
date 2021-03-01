version 1.0

task Csharp {
  input {
    Boolean? about
    Boolean? addmodule
    Boolean? checked
    Boolean? cls_check
    Boolean? codepage
    Boolean? define
    Boolean? debug
    Boolean? delay_sign
    Boolean? doc
    Boolean? full_paths
    Boolean? key_container
    Boolean? keyfile
    Boolean? lang_version
    Boolean? lib
    Boolean? main
    Boolean? no_config
    Boolean? nostdlib
    Boolean? nowarn
    Boolean? optimize
    File? out
    Boolean? pkg
    Boolean? platform
    Boolean? recurse
    Boolean? sdk
    Boolean? target
    Boolean? unsafe
    Boolean? warn
    Boolean? help_internal
    Boolean? link_resource
    Boolean? resource
    Boolean? win_three_two_res
    File? win_three_two_icon
    File at_file
  }
  command <<<
    csharp \
      ~{at_file} \
      ~{if (about) then "--about" else ""} \
      ~{if (addmodule) then "-addmodule" else ""} \
      ~{if (checked) then "-checked" else ""} \
      ~{if (cls_check) then "-clscheck" else ""} \
      ~{if (codepage) then "-codepage" else ""} \
      ~{if (define) then "-define" else ""} \
      ~{if (debug) then "-debug" else ""} \
      ~{if (delay_sign) then "-delaysign" else ""} \
      ~{if (doc) then "-doc" else ""} \
      ~{if (full_paths) then "-fullpaths" else ""} \
      ~{if (key_container) then "-keycontainer" else ""} \
      ~{if (keyfile) then "-keyfile" else ""} \
      ~{if (lang_version) then "-langversion" else ""} \
      ~{if (lib) then "-lib" else ""} \
      ~{if (main) then "-main" else ""} \
      ~{if (no_config) then "-noconfig" else ""} \
      ~{if (nostdlib) then "-nostdlib" else ""} \
      ~{if (nowarn) then "-nowarn" else ""} \
      ~{if (optimize) then "-optimize" else ""} \
      ~{if (out) then "-out" else ""} \
      ~{if (pkg) then "-pkg" else ""} \
      ~{if (platform) then "-platform" else ""} \
      ~{if (recurse) then "-recurse" else ""} \
      ~{if (sdk) then "-sdk" else ""} \
      ~{if (target) then "-target" else ""} \
      ~{if (unsafe) then "-unsafe" else ""} \
      ~{if (warn) then "-warn" else ""} \
      ~{if (help_internal) then "-helpinternal" else ""} \
      ~{if (link_resource) then "-linkresource" else ""} \
      ~{if (resource) then "-resource" else ""} \
      ~{if (win_three_two_res) then "-win32res" else ""} \
      ~{if (win_three_two_icon) then "-win32icon" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    about: "About the Mono C# compiler"
    addmodule: ":M1[,Mn]   Adds the module to the generated assembly"
    checked: "[+|-]        Sets default aritmetic overflow context"
    cls_check: "[+|-]       Disables CLS Compliance verifications"
    codepage: ":ID         Sets code page to the one in ID (number, utf8, reset)"
    define: ":S1[;S2]      Defines one or more conditional symbols (short: -d)"
    debug: "[+|-], -g      Generate debugging information"
    delay_sign: "[+|-]      Only insert the public key into the assembly (no signing)"
    doc: ":FILE            Process documentation comments to XML file"
    full_paths: "Any issued error or warning uses absolute file path"
    key_container: ":NAME   The key pair container used to sign the output assembly"
    keyfile: ":FILE        The key file used to strongname the ouput assembly"
    lang_version: ":TEXT    Specifies language version: ISO-1, ISO-2, 3, 4, 5, Default or Experimental"
    lib: ":PATH1[,PATHn]   Specifies the location of referenced assemblies"
    main: ":CLASS          Specifies the class with the Main method (short: -m)"
    no_config: "Disables implicitly referenced assemblies"
    nostdlib: "[+|-]       Does not reference mscorlib.dll library"
    nowarn: ":W1[,Wn]      Suppress one or more compiler warnings"
    optimize: "[+|-]       Enables advanced compiler optimizations (short: -o)"
    out: ":FILE            Specifies output assembly name"
    pkg: ":P1[,Pn]         References packages P1..Pn"
    platform: ":ARCH       Specifies the target platform of the output assembly\\nARCH can be one of: anycpu, anycpu32bitpreferred, arm,\\nx86, x64 or itanium. The default is anycpu."
    recurse: ":SPEC        Recursively compiles files according to SPEC pattern"
    sdk: ":VERSION         Specifies SDK version of referenced assemblies\\nVERSION can be one of: 2, 4, 4.5 (default) or a custom value"
    target: ":KIND         Specifies the format of the output assembly (short: -t)\\nKIND can be one of: exe, winexe, library, module"
    unsafe: "[+|-]         Allows to compile code which uses unsafe keyword"
    warn: ":0-4            Sets warning level, the default is 4 (short -w:)"
    help_internal: "Shows internal and advanced compiler options"
    link_resource: ":FILE[,ID] Links FILE as a resource (short: -linkres)"
    resource: ":FILE[,ID]     Embed FILE as a resource (short: -res)"
    win_three_two_res: ":FILE          Specifies Win32 resource file (.res)"
    win_three_two_icon: ":FILE         Use this icon for the output"
    at_file: "Read response file for more options"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_win_three_two_icon = "${in_win_three_two_icon}"
  }
}