version 1.0

task QpBound {
  input {
    String? use_nam_snp
    String? use_val_base
    File? use_parameters_file
    Boolean? print_message_exit
    String? use_val_seed
    String? give_nam_produced
    Boolean? print_version_exit
    Boolean? toggle_verbose_mode
    Boolean? toggle_analysis_mode
    File file
  }
  command <<<
    qpBound \
      ~{file} \
      ~{if defined(use_nam_snp) then ("-f " +  '"' + use_nam_snp + '"') else ""} \
      ~{if defined(use_val_base) then ("-b " +  '"' + use_val_base + '"') else ""} \
      ~{if defined(use_parameters_file) then ("-p " +  '"' + use_parameters_file + '"') else ""} \
      ~{if (print_message_exit) then "-g" else ""} \
      ~{if defined(use_val_seed) then ("-s " +  '"' + use_val_seed + '"') else ""} \
      ~{if defined(give_nam_produced) then ("-o " +  '"' + give_nam_produced + '"') else ""} \
      ~{if (print_version_exit) then "-v" else ""} \
      ~{if (toggle_verbose_mode) then "-V" else ""} \
      ~{if (toggle_analysis_mode) then "-x" else ""}
  >>>
  parameter_meta {
    use_nam_snp: "... use <nam> as snp details name."
    use_val_base: "... use <val> as base value."
    use_parameters_file: "... use parameters from <file> ."
    print_message_exit: "<>       ... Print this message and exit."
    use_val_seed: "... use <val> as seed value."
    give_nam_produced: "... give <nam> to produced out graph."
    print_version_exit: "... print version and exit."
    toggle_verbose_mode: "... toggle verbose mode ON."
    toggle_analysis_mode: "... toggle analysis  mode ON."
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}