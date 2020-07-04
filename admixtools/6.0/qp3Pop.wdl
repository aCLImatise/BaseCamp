version 1.0

task Qp3Pop {
  input {
    String? use_nam_details
    File? use_parameters_file
    String? use_val_base
    Boolean? print_version_exit
    Boolean? toggle_verbose_mode
    File file
  }
  command <<<
    qp3Pop \
      ~{file} \
      ~{if defined(use_nam_details) then ("-f " +  '"' + use_nam_details + '"') else ""} \
      ~{if defined(use_parameters_file) then ("-p " +  '"' + use_parameters_file + '"') else ""} \
      ~{if defined(use_val_base) then ("-s " +  '"' + use_val_base + '"') else ""} \
      ~{true="-v" false="" print_version_exit} \
      ~{true="-V" false="" toggle_verbose_mode}
  >>>
  parameter_meta {
    use_nam_details: "... use <nam> as snp details name."
    use_parameters_file: "... use parameters from <file> ."
    use_val_base: "... use <val> as base value."
    print_version_exit: "... print version and exit."
    toggle_verbose_mode: "... toggle verbose mode ON."
    file: ""
  }
}