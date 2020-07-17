version 1.0

task Nasm {
  input {
    Boolean? assemble_scitech_tasm
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
    String? write_listing_listfile
    Boolean? path_adds_pathname
    Boolean? digit_optimize_branch
    Boolean? file_preincludes_file
    Boolean? macro_predefines_macro
    Boolean? macro_undefines_macro
    Boolean? format_specifies_gnu
    Boolean? foo_enables_warning
    Boolean? w_foo
    String? at
    String error
    String macro_params
    String macro_self_ref
    String macro_defaults
    String orphan_labels
    String number_overflow
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
      ~{true="-t" false="" assemble_scitech_tasm} \
      ~{true="-g" false="" generate_debug_information} \
      ~{true="-E" false="" e_preprocess_only} \
      ~{true="-a" false="" preprocess_assemble_only} \
      ~{true="-M" false="" generate_makefile_dependencies} \
      ~{true="-MG" false="" mg} \
      ~{if defined(mf) then ("-MF " +  '"' + mf + '"') else ""} \
      ~{if defined(md) then ("-MD " +  '"' + md + '"') else ""} \
      ~{if defined(mt) then ("-MT " +  '"' + mt + '"') else ""} \
      ~{if defined(mq) then ("-MQ " +  '"' + mq + '"') else ""} \
      ~{true="-MP" false="" mp} \
      ~{true="-Z" false="" file_redirect_messages} \
      ~{true="-s" false="" redirect_error_messages} \
      ~{if defined(select_debugging_format) then ("-F " +  '"' + select_debugging_format + '"') else ""} \
      ~{if defined(write_output_outfile) then ("-o " +  '"' + write_output_outfile + '"') else ""} \
      ~{if defined(select_output_format) then ("-f " +  '"' + select_output_format + '"') else ""} \
      ~{if defined(write_listing_listfile) then ("-l " +  '"' + write_listing_listfile + '"') else ""} \
      ~{true="-I" false="" path_adds_pathname} \
      ~{true="-O" false="" digit_optimize_branch} \
      ~{true="-P" false="" file_preincludes_file} \
      ~{true="-D" false="" macro_predefines_macro} \
      ~{true="-U" false="" macro_undefines_macro} \
      ~{true="-X" false="" format_specifies_gnu} \
      ~{true="-w" false="" foo_enables_warning} \
      ~{true="-w-foo" false="" w_foo} \
      ~{if defined(at) then ("-@ " +  '"' + at + '"') else ""}
  >>>
  parameter_meta {
    assemble_scitech_tasm: "assemble in SciTech TASM compatible mode"
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
    digit_optimize_branch: "<digit>   optimize branch offsets -O0: No optimization -O1: Minimal optimization -Ox: Multipass optimization (default)"
    file_preincludes_file: "<file>    pre-includes a file"
    macro_predefines_macro: "<macro>[=<value>] pre-defines a macro"
    macro_undefines_macro: "<macro>   undefines a macro"
    format_specifies_gnu: "<format>  specifies error reporting format (gnu or vc)"
    foo_enables_warning: "+foo      enables warning foo (equiv. -Wfoo)"
    w_foo: "disable warning foo (equiv. -Wno-foo)"
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
}