version 1.0

task Qpff3base {
  input {
    String? use_nam_fixname
    String? use_va_base
    File? use_parameters_file
    String? use_val_seed
    String? use_val_lambda
    Boolean? print_version_exit
    Boolean? toggle_verbose_mode
    Boolean? _toggle_doanalysis
    File file
  }
  command <<<
    qpff3base \
      ~{file} \
      ~{if defined(use_nam_fixname) then ("-f " +  '"' + use_nam_fixname + '"') else ""} \
      ~{if defined(use_va_base) then ("-b " +  '"' + use_va_base + '"') else ""} \
      ~{if defined(use_parameters_file) then ("-p " +  '"' + use_parameters_file + '"') else ""} \
      ~{if defined(use_val_seed) then ("-s " +  '"' + use_val_seed + '"') else ""} \
      ~{if defined(use_val_lambda) then ("-l " +  '"' + use_val_lambda + '"') else ""} \
      ~{if (print_version_exit) then "-v" else ""} \
      ~{if (toggle_verbose_mode) then "-V" else ""} \
      ~{if (_toggle_doanalysis) then "-x" else ""}
  >>>
  parameter_meta {
    use_nam_fixname: "... use <nam> sa fixname."
    use_va_base: "... use <va> as base value."
    use_parameters_file: "... use parameters from <file> ."
    use_val_seed: "... use <val> as seed."
    use_val_lambda: "... use <val> as lambda scale."
    print_version_exit: "... print version and exit."
    toggle_verbose_mode: "... toggle verbose mode ON."
    _toggle_doanalysis: "... toggle doAnalysis ON."
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}