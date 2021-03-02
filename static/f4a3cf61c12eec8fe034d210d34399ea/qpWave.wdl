version 1.0

task QpWave {
  input {
    File? use_parameters_file
    Boolean? print_version_exit
    Boolean? toggle_verbose_mode
    File var_file
  }
  command <<<
    qpWave \
      ~{var_file} \
      ~{if defined(use_parameters_file) then ("-p " +  '"' + use_parameters_file + '"') else ""} \
      ~{if (print_version_exit) then "-v" else ""} \
      ~{if (toggle_verbose_mode) then "-V" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/admixtools:7.0.1--h1d3628b_0"
  }
  parameter_meta {
    use_parameters_file: "... use parameters from <file> ."
    print_version_exit: "... print version and exit."
    toggle_verbose_mode: "... toggle verbose mode ON."
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}