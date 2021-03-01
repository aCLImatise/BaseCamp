version 1.0

task NumPluginSvmdll {
  command <<<
    NumPluginSvm_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}