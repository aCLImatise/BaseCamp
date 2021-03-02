version 1.0

task Qp3Pop {
  input {
    String? use_nam_name
    File? use_parameters_file
    String? use_val_base
    Boolean? print_version_exit
    Boolean? toggle_verbose_mode
    File var_file
  }
  command <<<
    qp3Pop \
      ~{var_file} \
      ~{if defined(use_nam_name) then ("-f " +  '"' + use_nam_name + '"') else ""} \
      ~{if defined(use_parameters_file) then ("-p " +  '"' + use_parameters_file + '"') else ""} \
      ~{if defined(use_val_base) then ("-s " +  '"' + use_val_base + '"') else ""} \
      ~{if (print_version_exit) then "-v" else ""} \
      ~{if (toggle_verbose_mode) then "-V" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    use_nam_name: "... use <nam> as snp details name."
    use_parameters_file: "... use parameters from <file> ."
    use_val_base: "... use <val> as base value."
    print_version_exit: "... print version and exit."
    toggle_verbose_mode: "... toggle verbose mode ON."
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}