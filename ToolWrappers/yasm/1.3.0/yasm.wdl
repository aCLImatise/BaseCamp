version 1.0

task Yasm {
  input {
    Boolean? license
    String? arch
    String? parser
    String? preproc
    String? o_format
    String? d_format
    String? l_format
    File? list
    File? objfile
    File? map_file
    String? machine
    String? force_strict
    Boolean? inhibits_warning_messages
    Boolean? enablesdisables_warning
    Boolean? generate_makefile_dependencies
    File? redirect_error_messages_file
    Boolean? redirect_error_messages_stdout
    Boolean? preproc_only
    File? var_18
    File? var_19
    File? preinclude_file
    Boolean? var_21
    Boolean? var_22
    String? var_23
    String? var_24
    String? select_errorwarning_message
    String? prefix
    String? suffix
    String? postfix
  }
  command <<<
    yasm \
      ~{if (license) then "--license" else ""} \
      ~{if defined(arch) then ("--arch " +  '"' + arch + '"') else ""} \
      ~{if defined(parser) then ("--parser " +  '"' + parser + '"') else ""} \
      ~{if defined(preproc) then ("--preproc " +  '"' + preproc + '"') else ""} \
      ~{if defined(o_format) then ("--oformat " +  '"' + o_format + '"') else ""} \
      ~{if defined(d_format) then ("--dformat " +  '"' + d_format + '"') else ""} \
      ~{if defined(l_format) then ("--lformat " +  '"' + l_format + '"') else ""} \
      ~{if defined(list) then ("--list " +  '"' + list + '"') else ""} \
      ~{if defined(objfile) then ("--objfile " +  '"' + objfile + '"') else ""} \
      ~{if defined(map_file) then ("--mapfile " +  '"' + map_file + '"') else ""} \
      ~{if defined(machine) then ("--machine " +  '"' + machine + '"') else ""} \
      ~{if defined(force_strict) then ("--force-strict " +  '"' + force_strict + '"') else ""} \
      ~{if (inhibits_warning_messages) then "-w" else ""} \
      ~{if (enablesdisables_warning) then "-W" else ""} \
      ~{if (generate_makefile_dependencies) then "-M" else ""} \
      ~{if defined(redirect_error_messages_file) then ("-E " +  '"' + redirect_error_messages_file + '"') else ""} \
      ~{if (redirect_error_messages_stdout) then "-s" else ""} \
      ~{if (preproc_only) then "--preproc-only" else ""} \
      ~{if defined(var_18) then ("-i " +  '"' + var_18 + '"') else ""} \
      ~{if defined(var_19) then ("-I " +  '"' + var_19 + '"') else ""} \
      ~{if defined(preinclude_file) then ("-P " +  '"' + preinclude_file + '"') else ""} \
      ~{if (var_21) then "-d" else ""} \
      ~{if (var_22) then "-D" else ""} \
      ~{if defined(var_23) then ("-u " +  '"' + var_23 + '"') else ""} \
      ~{if defined(var_24) then ("-U " +  '"' + var_24 + '"') else ""} \
      ~{if defined(select_errorwarning_message) then ("-X " +  '"' + select_errorwarning_message + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(suffix) then ("--suffix " +  '"' + suffix + '"') else ""} \
      ~{if defined(postfix) then ("--postfix " +  '"' + postfix + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    license: "show license text"
    arch: "select architecture (list with -a help)"
    parser: "select parser (list with -p help)"
    preproc: "select preprocessor (list with -r help)"
    o_format: "select object format (list with -f help)"
    d_format: "select debugging format (list with -g help)"
    l_format: "select list format (list with -L help)"
    list: "name of list-file output"
    objfile: "name of object-file output"
    map_file: "name of map-file output"
    machine: "select machine (list with -m help)"
    force_strict: "treat all sized operands as if `strict' was used"
    inhibits_warning_messages: "inhibits warning messages"
    enablesdisables_warning: "enables/disables warning"
    generate_makefile_dependencies: "generate Makefile dependencies on stdout"
    redirect_error_messages_file: "redirect error messages to file"
    redirect_error_messages_stdout: "redirect error messages to stdout"
    preproc_only: "preprocess only (writes output to stdout by default)"
    var_18: "add include path"
    var_19: "add include path"
    preinclude_file: "pre-include file"
    var_21: "<macro[=value]>      pre-define a macro, optionally to value"
    var_22: "<macro[=value]>      pre-define a macro, optionally to value"
    var_23: "undefine a macro"
    var_24: "undefine a macro"
    select_errorwarning_message: "select error/warning message style (`gnu' or `vc')"
    prefix: "prepend argument to name of all external symbols"
    suffix: "append argument to name of all external symbols"
    postfix: "append argument to name of all external symbols"
  }
  output {
    File out_stdout = stdout()
    File out_list = "${in_list}"
    File out_objfile = "${in_objfile}"
    File out_map_file = "${in_map_file}"
  }
}