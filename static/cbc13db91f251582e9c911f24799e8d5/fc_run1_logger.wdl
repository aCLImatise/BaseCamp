version 1.0

task FcRun1Logger {
  input {
    String? configConfig
    String? loggerLogger
  }
  command <<<
    fc_run1 logger \
      ~{configConfig} \
      ~{loggerLogger}
  >>>
}