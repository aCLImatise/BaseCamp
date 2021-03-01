version 1.0

task NumPluginBasedll {
  command <<<
    NumPluginBase_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}