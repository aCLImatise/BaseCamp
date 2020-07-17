version 1.0

task FcRun.pyLogger {
  input {
    String fc_run_do_tpy
    String config
    String? logger
  }
  command <<<
    fc_run.py logger \
      ~{fc_run_do_tpy} \
      ~{config} \
      ~{logger}
  >>>
  parameter_meta {
    fc_run_do_tpy: ""
    config: ""
    logger: ""
  }
}