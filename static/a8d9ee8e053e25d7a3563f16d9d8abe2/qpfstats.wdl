version 1.0

task Qpfstats {
  input {
    String? use_va_base
    File? use_parameters_file
    String? use_val_seed
    String? use_val_lambda
    Boolean? print_version_exit
    Boolean? toggle_verbose_mode
    Boolean? toggle_doanalysis_on
    File var_file
  }
  command <<<
    qpfstats \
      ~{var_file} \
      ~{if defined(use_va_base) then ("-b " +  '"' + use_va_base + '"') else ""} \
      ~{if defined(use_parameters_file) then ("-p " +  '"' + use_parameters_file + '"') else ""} \
      ~{if defined(use_val_seed) then ("-s " +  '"' + use_val_seed + '"') else ""} \
      ~{if defined(use_val_lambda) then ("-l " +  '"' + use_val_lambda + '"') else ""} \
      ~{if (print_version_exit) then "-v" else ""} \
      ~{if (toggle_verbose_mode) then "-V" else ""} \
      ~{if (toggle_doanalysis_on) then "-x" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/admixtools:7.0.1--h1d3628b_0"
  }
  parameter_meta {
    use_va_base: "... use <va> as base value."
    use_parameters_file: "... use parameters from <file> ."
    use_val_seed: "... use <val> as seed."
    use_val_lambda: "... use <val> as lambda scale."
    print_version_exit: "... print version and exit."
    toggle_verbose_mode: "... toggle verbose mode ON."
    toggle_doanalysis_on: "... toggle doAnalysis ON."
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}