version 1.0

task FcRunpyLogger {
  input {
    String fc_run_do_tpy
    String config
    String? logger
  }
  command <<<
    fc_run_py logger \
      ~{fc_run_do_tpy} \
      ~{config} \
      ~{logger}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fc_run_do_tpy: ""
    config: ""
    logger: ""
  }
  output {
    File out_stdout = stdout()
  }
}