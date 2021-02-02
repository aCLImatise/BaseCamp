version 1.0

task FcRunLogger {
  input {
    String fc_run
    String config
    String? logger
  }
  command <<<
    fc_run logger \
      ~{fc_run} \
      ~{config} \
      ~{logger}
  >>>
  parameter_meta {
    fc_run: ""
    config: ""
    logger: ""
  }
  output {
    File out_stdout = stdout()
  }
}