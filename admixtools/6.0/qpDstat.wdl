version 1.0

task QpDstat {
  input {
    String? use_val_low
    String? use_val_high
    File? use_parameters_file
    Boolean? print_version_exit
    Boolean? toggle_verbose_mode
    File file
  }
  command <<<
    qpDstat \
      ~{file} \
      ~{if defined(use_val_low) then ("-L " +  '"' + use_val_low + '"') else ""} \
      ~{if defined(use_val_high) then ("-H " +  '"' + use_val_high + '"') else ""} \
      ~{if defined(use_parameters_file) then ("-p " +  '"' + use_parameters_file + '"') else ""} \
      ~{if (print_version_exit) then "-v" else ""} \
      ~{if (toggle_verbose_mode) then "-V" else ""}
  >>>
  parameter_meta {
    use_val_low: "... use <val> as low value."
    use_val_high: "... use <val> as high value."
    use_parameters_file: "... use parameters from <file> ."
    print_version_exit: "... print version and exit."
    toggle_verbose_mode: "... toggle verbose mode ON."
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}