version 1.0

task FcRun1Config {
  input {
    String? configConfig
    String? loggerLogger
  }
  command <<<
    fc_run1 config \
      ~{configConfig} \
      ~{loggerLogger}
  >>>
}