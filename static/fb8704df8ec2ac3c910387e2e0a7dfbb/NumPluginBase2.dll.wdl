version 1.0

task NumPluginBase2dll {
  command <<<
    NumPluginBase2_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}