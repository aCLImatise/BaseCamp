version 1.0

task PluginRawThermo2dll {
  command <<<
    PluginRawThermo2_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}