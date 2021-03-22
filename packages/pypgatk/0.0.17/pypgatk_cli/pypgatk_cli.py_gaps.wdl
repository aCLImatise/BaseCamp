version 1.0

task PypgatkClipyGaps {
  input {
    String p_ypg_atk_cli_do_tpy
    String var_command
    String? args
  }
  command <<<
    pypgatk_cli_py gaps \
      ~{p_ypg_atk_cli_do_tpy} \
      ~{var_command} \
      ~{args}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pypgatk:0.0.17--py_0"
  }
  parameter_meta {
    p_ypg_atk_cli_do_tpy: ""
    var_command: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}