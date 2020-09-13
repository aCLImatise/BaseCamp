version 1.0

task Vsyasm {
  input {
    Boolean? license
    String? arch
    String? a
    String? parser
    String? var_4
    String? preproc
    String? r
    String? o_format
    String? f
    String? d_format
    String? g
    String? l_format
    String? var_12
    File? list
    String? var_14
    File? objdir
    String? o
    File? map_dir
    File? list_ext
    File? objext
    File? map_ext
    String? machine
    String? m
    Boolean? force_strict
    Boolean? inhibits_warning_messages
    Boolean? enablesdisables_warning
    File? redirect_error_messages_file
    Boolean? redirect_error_messages_stdout
    File? var_28
    File? var_29
    File? preinclude_file
    Boolean? var_31
    Boolean? var_32
    String? var_33
    String? var_34
    String? select_errorwarning_gnu
    String? prefix
    String? suffix
    String? postfix
  }
  command <<<
    vsyasm \
      ~{if (license) then "--license" else ""} \
      ~{if defined(arch) then ("--arch " +  '"' + arch + '"') else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(parser) then ("--parser " +  '"' + parser + '"') else ""} \
      ~{if defined(var_4) then ("-p " +  '"' + var_4 + '"') else ""} \
      ~{if defined(preproc) then ("--preproc " +  '"' + preproc + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(o_format) then ("--oformat " +  '"' + o_format + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(d_format) then ("--dformat " +  '"' + d_format + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if defined(l_format) then ("--lformat " +  '"' + l_format + '"') else ""} \
      ~{if defined(var_12) then ("-L " +  '"' + var_12 + '"') else ""} \
      ~{if defined(list) then ("--list " +  '"' + list + '"') else ""} \
      ~{if defined(var_14) then ("-l " +  '"' + var_14 + '"') else ""} \
      ~{if defined(objdir) then ("--objdir " +  '"' + objdir + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(map_dir) then ("--mapdir " +  '"' + map_dir + '"') else ""} \
      ~{if defined(list_ext) then ("--listext " +  '"' + list_ext + '"') else ""} \
      ~{if defined(objext) then ("--objext " +  '"' + objext + '"') else ""} \
      ~{if defined(map_ext) then ("--mapext " +  '"' + map_ext + '"') else ""} \
      ~{if defined(machine) then ("--machine " +  '"' + machine + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if (force_strict) then "--force-strict" else ""} \
      ~{if (inhibits_warning_messages) then "-w" else ""} \
      ~{if (enablesdisables_warning) then "-W" else ""} \
      ~{if defined(redirect_error_messages_file) then ("-E " +  '"' + redirect_error_messages_file + '"') else ""} \
      ~{if (redirect_error_messages_stdout) then "-s" else ""} \
      ~{if defined(var_28) then ("-i " +  '"' + var_28 + '"') else ""} \
      ~{if defined(var_29) then ("-I " +  '"' + var_29 + '"') else ""} \
      ~{if defined(preinclude_file) then ("-P " +  '"' + preinclude_file + '"') else ""} \
      ~{if (var_31) then "-d" else ""} \
      ~{if (var_32) then "-D" else ""} \
      ~{if defined(var_33) then ("-u " +  '"' + var_33 + '"') else ""} \
      ~{if defined(var_34) then ("-U " +  '"' + var_34 + '"') else ""} \
      ~{if defined(select_errorwarning_gnu) then ("-X " +  '"' + select_errorwarning_gnu + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(suffix) then ("--suffix " +  '"' + suffix + '"') else ""} \
      ~{if defined(postfix) then ("--postfix " +  '"' + postfix + '"') else ""}
  >>>
  parameter_meta {
    license: "show license text"
    arch: "select architecture (list with -a help)"
    a: ""
    parser: "select parser (list with -p help)"
    var_4: ""
    preproc: "select preprocessor (list with -r help)"
    r: ""
    o_format: "select object format (list with -f help)"
    f: ""
    d_format: "select debugging format (list with -g help)"
    g: ""
    l_format: "select list format (list with -L help)"
    var_12: ""
    list: "name of list-file output directory"
    var_14: ""
    objdir: "name of object-file output directory"
    o: ""
    map_dir: "name of map-file output directory"
    list_ext: "list-file extension (default `lst')"
    objext: "object-file extension (default is by object format)"
    map_ext: "map-file extension (default `map')"
    machine: "select machine (list with -m help)"
    m: ""
    force_strict: "treat all sized operands as if `strict' was used"
    inhibits_warning_messages: "inhibits warning messages"
    enablesdisables_warning: "enables/disables warning"
    redirect_error_messages_file: "redirect error messages to file"
    redirect_error_messages_stdout: "redirect error messages to stdout"
    var_28: "add include path"
    var_29: "add include path"
    preinclude_file: "pre-include file"
    var_31: "<macro[=value]>      pre-define a macro, optionally to value"
    var_32: "<macro[=value]>      pre-define a macro, optionally to value"
    var_33: "undefine a macro"
    var_34: "undefine a macro"
    select_errorwarning_gnu: "select error/warning message style (`gnu' or `vc')"
    prefix: "prepend argument to name of all external symbols"
    suffix: "append argument to name of all external symbols"
    postfix: "append argument to name of all external symbols"
  }
  output {
    File out_stdout = stdout()
    File out_list = "${in_list}"
    File out_objdir = "${in_objdir}"
    File out_map_dir = "${in_map_dir}"
  }
}