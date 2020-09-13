version 1.0

task BaseCommondll {
  command <<<
    BaseCommon_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}