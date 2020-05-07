version 1.0

task FcRun.pyLogger {
  input {
    String? configConfig
    String? loggerLogger
  }
  command <<<
    fc_run.py logger \
      ~{configConfig} \
      ~{loggerLogger}
  >>>
}