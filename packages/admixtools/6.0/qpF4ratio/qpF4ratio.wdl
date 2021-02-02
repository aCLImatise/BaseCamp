version 1.0

task QpF4ratio {
  input {
    File? use_parameters_file
    Boolean? print_version_exit
    Boolean? toggle_verbose_mode
    File file
  }
  command <<<
    qpF4ratio \
      ~{file} \
      ~{if defined(use_parameters_file) then ("-p " +  '"' + use_parameters_file + '"') else ""} \
      ~{if (print_version_exit) then "-v" else ""} \
      ~{if (toggle_verbose_mode) then "-V" else ""}
  >>>
  parameter_meta {
    use_parameters_file: "... use parameters from <file> ."
    print_version_exit: "... print version and exit."
    toggle_verbose_mode: "... toggle verbose mode ON."
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}