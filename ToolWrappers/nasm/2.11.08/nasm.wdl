version 1.0

task Nasm {
  input {
    Boolean? assemble_scitech_compatible
    Boolean? generate_debug_information
    Boolean? e_preprocess_only
    Boolean? preprocess_assemble_only
    Boolean? generate_makefile_dependencies
    Boolean? mg
    File? mf
    File? md
    File? mt
    File? mq
    Boolean? mp
    Boolean? file_redirect_messages
    Boolean? redirect_error_messages
    String? select_debugging_format
    String? write_output_outfile
    String? select_output_format
    File? write_listing_listfile
    Boolean? path_adds_pathname
    Boolean? digit_branch_offsets
    Boolean? o_zero
    Boolean? o_one
    Boolean? ox
    Boolean? file_preincludes_file
    Boolean? macro_predefines_macro
    Boolean? macro_undefines_macro
    Boolean? format_specifies_gnu
    Boolean? foo_enables_warning
    Boolean? w_foo
    Boolean? postfix
    String? at
    String error
    String macro_params
    String macro_self_ref
    String macro_defaults
    String orphan_labels
    Int number_overflow
    String gnu_elf_extensions
    Float float_overflow
    Float float_de_norm
    Float float_underflow
    Float float_too_long
    String user
    String lock
    String hle
    String bnd
  }
  command <<<
    nasm \
      ~{error} \
      ~{macro_params} \
      ~{macro_self_ref} \
      ~{macro_defaults} \
      ~{orphan_labels} \
      ~{number_overflow} \
      ~{gnu_elf_extensions} \
      ~{float_overflow} \
      ~{float_de_norm} \
      ~{float_underflow} \
      ~{float_too_long} \
      ~{user} \
      ~{lock} \
      ~{hle} \
      ~{bnd} \
      ~{if (assemble_scitech_compatible) then "-t" else ""} \
      ~{if (generate_debug_information) then "-g" else ""} \
      ~{if (e_preprocess_only) then "-E" else ""} \
      ~{if (preprocess_assemble_only) then "-a" else ""} \
      ~{if (generate_makefile_dependencies) then "-M" else ""} \
      ~{if (mg) then "-MG" else ""} \
      ~{if defined(mf) then ("-MF " +  '"' + mf + '"') else ""} \
      ~{if defined(md) then ("-MD " +  '"' + md + '"') else ""} \
      ~{if defined(mt) then ("-MT " +  '"' + mt + '"') else ""} \
      ~{if defined(mq) then ("-MQ " +  '"' + mq + '"') else ""} \
      ~{if (mp) then "-MP" else ""} \
      ~{if (file_redirect_messages) then "-Z" else ""} \
      ~{if (redirect_error_messages) then "-s" else ""} \
      ~{if defined(select_debugging_format) then ("-F " +  '"' + select_debugging_format + '"') else ""} \
      ~{if defined(write_output_outfile) then ("-o " +  '"' + write_output_outfile + '"') else ""} \
      ~{if defined(select_output_format) then ("-f " +  '"' + select_output_format + '"') else ""} \
      ~{if defined(write_listing_listfile) then ("-l " +  '"' + write_listing_listfile + '"') else ""} \
      ~{if (path_adds_pathname) then "-I" else ""} \
      ~{if (digit_branch_offsets) then "-O" else ""} \
      ~{if (o_zero) then "-O0" else ""} \
      ~{if (o_one) then "-O1" else ""} \
      ~{if (ox) then "-Ox" else ""} \
      ~{if (file_preincludes_file) then "-P" else ""} \
      ~{if (macro_predefines_macro) then "-D" else ""} \
      ~{if (macro_undefines_macro) then "-U" else ""} \
      ~{if (format_specifies_gnu) then "-X" else ""} \
      ~{if (foo_enables_warning) then "-w" else ""} \
      ~{if (w_foo) then "-w-foo" else ""} \
      ~{if (postfix) then "--postfix" else ""} \
      ~{if defined(at) then ("-@ " +  '"' + at + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    assemble_scitech_compatible: "assemble in SciTech TASM compatible mode"
    generate_debug_information: "generate debug information in selected format"
    e_preprocess_only: "(or -e)  preprocess only (writes output to stdout by default)"
    preprocess_assemble_only: "don't preprocess (assemble only)"
    generate_makefile_dependencies: "generate Makefile dependencies on stdout"
    mg: "d:o, missing files assumed generated"
    mf: "set Makefile dependency file"
    md: "assemble and generate dependencies"
    mt: "dependency target name"
    mq: "dependency target name (quoted)"
    mp: "emit phony target"
    file_redirect_messages: "<file>    redirect error messages to file"
    redirect_error_messages: "redirect error messages to stdout"
    select_debugging_format: "select a debugging format"
    write_output_outfile: "write output to an outfile"
    select_output_format: "select an output format"
    write_listing_listfile: "write listing to a listfile"
    path_adds_pathname: "<path>    adds a pathname to the include file path"
    digit_branch_offsets: "<digit>   optimize branch offsets"
    o_zero: ": No optimization"
    o_one: ": Minimal optimization"
    ox: ": Multipass optimization (default)"
    file_preincludes_file: "<file>    pre-includes a file"
    macro_predefines_macro: "<macro>[=<value>] pre-defines a macro"
    macro_undefines_macro: "<macro>   undefines a macro"
    format_specifies_gnu: "<format>  specifies error reporting format (gnu or vc)"
    foo_enables_warning: "+foo      enables warning foo (equiv. -Wfoo)"
    w_foo: "disable warning foo (equiv. -Wno-foo)"
    postfix: "this options prepend or append the given argument to all\\nextern and global variables"
    at: ""
    error: "treat warnings as errors (default off)"
    macro_params: "macro calls with wrong parameter count (default on)"
    macro_self_ref: "cyclic macro references (default off)"
    macro_defaults: "macros with more default than optional parameters (default on)"
    orphan_labels: "labels alone on lines without trailing `:' (default on)"
    number_overflow: "numeric constant does not fit (default on)"
    gnu_elf_extensions: "using 8- or 16-bit relocation in ELF32, a GNU extension (default off)"
    float_overflow: "floating point overflow (default on)"
    float_de_norm: "floating point denormal (default off)"
    float_underflow: "floating point underflow (default off)"
    float_too_long: "too many digits in floating-point number (default on)"
    user: "%warning directives (default on)"
    lock: "lock prefix on unlockable instructions (default on)"
    hle: "invalid hle prefixes (default on)"
    bnd: "invalid bnd prefixes (default on)"
  }
  output {
    File out_stdout = stdout()
  }
}