version 1.0

task BaseCommondll {
  command <<<
    BaseCommon_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}