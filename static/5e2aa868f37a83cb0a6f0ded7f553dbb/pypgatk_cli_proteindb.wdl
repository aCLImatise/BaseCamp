version 1.0

task PypgatkCliProteindb {
  input {
    String p_ypg_atk_cli
    String var_command
    String? args
  }
  command <<<
    pypgatk_cli proteindb \
      ~{p_ypg_atk_cli} \
      ~{var_command} \
      ~{args}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pypgatk:0.0.16--py_0"
  }
  parameter_meta {
    p_ypg_atk_cli: ""
    var_command: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}