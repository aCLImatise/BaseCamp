version 1.0

task HomerConfigpm {
  command <<<
    HomerConfig_pm
  >>>
  output {
    File out_stdout = stdout()
  }
}