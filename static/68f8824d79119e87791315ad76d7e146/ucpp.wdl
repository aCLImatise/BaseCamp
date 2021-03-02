version 1.0

task Ucpp {
  input {
    Boolean? keep_comments_output
    Boolean? keep_when_recognized
    Boolean? do_emit_line_numbers
    Boolean? lg
    Boolean? cc
    Boolean? na
    Boolean? disable_macros_extra
    Boolean? understand_utf_
    Boolean? enable_u_y
    Boolean? c_nine_zero
    Boolean? disable_trigraph_support
    Boolean? wt
    Boolean? wtt
    Boolean? wa
    Boolean? w_zero
    Directory? add__before_standard_include_path
    Directory? add__after_standard_include_path
    Boolean? zi
    Boolean? emit_makefilelike_dependencies
    Boolean? ma
    File? store_output_file
    Boolean? u_macro
    Boolean? a_foo
    Boolean? b_foo
    Boolean? predefine_systemdependant_macros
    Boolean? predefine_special_macros
    Boolean? emit_defined_macros
    Boolean? emit_assertions
    Boolean? print_version_number
    File? var_file
  }
  command <<<
    ucpp \
      ~{var_file} \
      ~{if (keep_comments_output) then "-C" else ""} \
      ~{if (keep_when_recognized) then "-s" else ""} \
      ~{if (do_emit_line_numbers) then "-l" else ""} \
      ~{if (lg) then "-lg" else ""} \
      ~{if (cc) then "-CC" else ""} \
      ~{if (na) then "-na" else ""} \
      ~{if (disable_macros_extra) then "-V" else ""} \
      ~{if (understand_utf_) then "-u" else ""} \
      ~{if (enable_u_y) then "-X" else ""} \
      ~{if (c_nine_zero) then "-c90" else ""} \
      ~{if (disable_trigraph_support) then "-t" else ""} \
      ~{if (wt) then "-wt" else ""} \
      ~{if (wtt) then "-wtt" else ""} \
      ~{if (wa) then "-wa" else ""} \
      ~{if (w_zero) then "-w0" else ""} \
      ~{if defined(add__before_standard_include_path) then ("-I " +  '"' + add__before_standard_include_path + '"') else ""} \
      ~{if defined(add__after_standard_include_path) then ("-J " +  '"' + add__after_standard_include_path + '"') else ""} \
      ~{if (zi) then "-zI" else ""} \
      ~{if (emit_makefilelike_dependencies) then "-M" else ""} \
      ~{if (ma) then "-Ma" else ""} \
      ~{if defined(store_output_file) then ("-o " +  '"' + store_output_file + '"') else ""} \
      ~{if (u_macro) then "-Umacro" else ""} \
      ~{if (a_foo) then "-Afoo" else ""} \
      ~{if (b_foo) then "-Bfoo" else ""} \
      ~{if (predefine_systemdependant_macros) then "-Y" else ""} \
      ~{if (predefine_special_macros) then "-Z" else ""} \
      ~{if (emit_defined_macros) then "-d" else ""} \
      ~{if (emit_assertions) then "-e" else ""} \
      ~{if (print_version_number) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    keep_comments_output: "keep comments in output"
    keep_when_recognized: "keep '#' when no cpp directive is recognized"
    do_emit_line_numbers: "do not emit line numbers"
    lg: "emit gcc-like line numbers"
    cc: "disable C++-like comments"
    na: "handle (or not) assertions"
    disable_macros_extra: "disable macros with extra arguments"
    understand_utf_: "understand UTF-8 in source"
    enable_u_y: "enable -a, -u and -Y"
    c_nine_zero: "mimic C90 behaviour"
    disable_trigraph_support: "disable trigraph support"
    wt: "emit a final warning when trigaphs are encountered"
    wtt: "emit warnings for each trigaph encountered"
    wa: "emit warnings that are usually useless"
    w_zero: "disable standard warnings"
    add__before_standard_include_path: "add 'directory' before the standard include path"
    add__after_standard_include_path: "add 'directory' after the standard include path"
    zi: "do not use the standard include path"
    emit_makefilelike_dependencies: "emit Makefile-like dependencies instead of normal output"
    ma: "emit also dependancies for system files"
    store_output_file: "store output in file"
    u_macro: "undefine 'macro'"
    a_foo: "(bar)      assert foo(bar)"
    b_foo: "(bar)      unassert foo(bar)"
    predefine_systemdependant_macros: "predefine system-dependant macros"
    predefine_special_macros: "do not predefine special macros"
    emit_defined_macros: "emit defined macros"
    emit_assertions: "emit assertions"
    print_version_number: "print version number and settings"
    var_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_store_output_file = "${in_store_output_file}"
  }
}