version 1.0

task QpDpart {
  input {
    String? use_val_as
    String? use_val_sa
    File? use_parameters_file
    Boolean? print_version_exit
    Boolean? toggle_verbose_mode
    File file
  }
  command <<<
    qpDpart \
      ~{file} \
      ~{if defined(use_val_as) then ("-L " +  '"' + use_val_as + '"') else ""} \
      ~{if defined(use_val_sa) then ("-H " +  '"' + use_val_sa + '"') else ""} \
      ~{if defined(use_parameters_file) then ("-p " +  '"' + use_parameters_file + '"') else ""} \
      ~{true="-v" false="" print_version_exit} \
      ~{true="-V" false="" toggle_verbose_mode}
  >>>
  parameter_meta {
    use_val_as: "... use <val> as low count value."
    use_val_sa: "... use <val> sa high count value."
    use_parameters_file: "... use parameters from <file> ."
    print_version_exit: "... print version and exit."
    toggle_verbose_mode: "... toggle verbose mode ON."
    file: ""
  }
}