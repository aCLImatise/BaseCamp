version 1.0

task Qp3Pop {
  input {
    String? use_nam_name
    File? use_parameters_file
    String? locount_n_popfilename
    String? _hicount_popfilename
    Boolean? print_version_exit
    Boolean? toggle_verbose_mode
    File var_file
  }
  command <<<
    qp3Pop \
      ~{var_file} \
      ~{if defined(use_nam_name) then ("-f " +  '"' + use_nam_name + '"') else ""} \
      ~{if defined(use_parameters_file) then ("-p " +  '"' + use_parameters_file + '"') else ""} \
      ~{if defined(locount_n_popfilename) then ("-L " +  '"' + locount_n_popfilename + '"') else ""} \
      ~{if defined(_hicount_popfilename) then ("-H " +  '"' + _hicount_popfilename + '"') else ""} \
      ~{if (print_version_exit) then "-v" else ""} \
      ~{if (toggle_verbose_mode) then "-V" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/admixtools:7.0.1--h1d3628b_0"
  }
  parameter_meta {
    use_nam_name: "... use <nam> as snp details name."
    use_parameters_file: "... use parameters from <file> ."
    locount_n_popfilename: "... locount -n popfilename."
    _hicount_popfilename: "... hicount -n popfilename."
    print_version_exit: "... print version and exit."
    toggle_verbose_mode: "... toggle verbose mode ON."
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}