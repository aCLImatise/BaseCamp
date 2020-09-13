version 1.0

task QpAdm {
  input {
    File? use_parameters_file
    Boolean? print_version_exit
  }
  command <<<
    qpAdm \
      ~{if defined(use_parameters_file) then ("-p " +  '"' + use_parameters_file + '"') else ""} \
      ~{if (print_version_exit) then "-v" else ""}
  >>>
  parameter_meta {
    use_parameters_file: "... use parameters from <file> ."
    print_version_exit: "... print version and exit."
  }
  output {
    File out_stdout = stdout()
  }
}