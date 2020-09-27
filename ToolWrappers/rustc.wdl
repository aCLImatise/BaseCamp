version 1.0

task Rustc {
  input {
    String? cfg
    Boolean? path_add_directory
    Boolean? name_link_crates
    Boolean? crate_type
    String? crate_name
    Boolean? emit
    Boolean? print
    Boolean? equivalent_c_debuginfo
    Boolean? equivalent_to_c
    File? write_output_filename
    File? out_dir
    String? explain
    Boolean? test
    String? target
    String? warn
    String? allow
    String? deny
    String? forbid
    String? cap_lint_s
    String? codegen
    Boolean? verbose
    String? print_internal_options
    String var_input
  }
  command <<<
    rustc \
      ~{var_input} \
      ~{if defined(cfg) then ("--cfg " +  '"' + cfg + '"') else ""} \
      ~{if (path_add_directory) then "-L" else ""} \
      ~{if (name_link_crates) then "-l" else ""} \
      ~{if (crate_type) then "--crate-type" else ""} \
      ~{if defined(crate_name) then ("--crate-name " +  '"' + crate_name + '"') else ""} \
      ~{if (emit) then "--emit" else ""} \
      ~{if (print) then "--print" else ""} \
      ~{if (equivalent_c_debuginfo) then "-g" else ""} \
      ~{if (equivalent_to_c) then "-O" else ""} \
      ~{if defined(write_output_filename) then ("-o " +  '"' + write_output_filename + '"') else ""} \
      ~{if defined(out_dir) then ("--out-dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(explain) then ("--explain " +  '"' + explain + '"') else ""} \
      ~{if (test) then "--test" else ""} \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""} \
      ~{if defined(warn) then ("--warn " +  '"' + warn + '"') else ""} \
      ~{if defined(allow) then ("--allow " +  '"' + allow + '"') else ""} \
      ~{if defined(deny) then ("--deny " +  '"' + deny + '"') else ""} \
      ~{if defined(forbid) then ("--forbid " +  '"' + forbid + '"') else ""} \
      ~{if defined(cap_lint_s) then ("--cap-lints " +  '"' + cap_lint_s + '"') else ""} \
      ~{if defined(codegen) then ("--codegen " +  '"' + codegen + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(print_internal_options) then ("-Z " +  '"' + print_internal_options + '"') else ""}
  >>>
  parameter_meta {
    cfg: "Configure the compilation environment"
    path_add_directory: "[KIND=]PATH      Add a directory to the library search path. The\\noptional KIND can be one of dependency, crate, native,\\nframework or all (the default)."
    name_link_crates: "[KIND=]NAME      Link the generated crate(s) to the specified native\\nlibrary NAME. The optional KIND can be one of static,\\ndylib, or framework. If omitted, dylib is assumed."
    crate_type: "[bin|lib|rlib|dylib|cdylib|staticlib]\\nComma separated list of types of crates for the\\ncompiler to emit"
    crate_name: "Specify the name of the crate being built"
    emit: "[asm|llvm-bc|llvm-ir|obj|link|dep-info]\\nComma separated list of types of output for the\\ncompiler to emit"
    print: "[crate-name|file-names|sysroot|cfg|target-list|target-cpus|target-features|relocation-models|code-models]\\nComma separated list of compiler information to print\\non stdout"
    equivalent_c_debuginfo: "Equivalent to -C debuginfo=2"
    equivalent_to_c: "Equivalent to -C opt-level=2"
    write_output_filename: "Write output to <filename>"
    out_dir: "Write output to compiler-chosen filename in <dir>"
    explain: "Provide a detailed explanation of an error message"
    test: "Build a test harness"
    target: "Target triple for which the code is compiled"
    warn: "Set lint warnings"
    allow: "Set lint allowed"
    deny: "Set lint denied"
    forbid: "Set lint forbidden"
    cap_lint_s: "Set the most restrictive lint level. More restrictive\\nlints are capped at this level"
    codegen: "[=VALUE]\\nSet a codegen option"
    verbose: "Use verbose output"
    print_internal_options: "Print internal options for debugging rustc"
    var_input: ""
  }
  output {
    File out_stdout = stdout()
    File out_write_output_filename = "${in_write_output_filename}"
    File out_out_dir = "${in_out_dir}"
  }
}