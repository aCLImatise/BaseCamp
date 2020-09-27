version 1.0

task FcRun1Logger {
  input {
    Int fc_run_one
    String config
    String? logger
  }
  command <<<
    fc_run1 logger \
      ~{fc_run_one} \
      ~{config} \
      ~{logger}
  >>>
  parameter_meta {
    fc_run_one: ""
    config: ""
    logger: ""
  }
  output {
    File out_stdout = stdout()
  }
}