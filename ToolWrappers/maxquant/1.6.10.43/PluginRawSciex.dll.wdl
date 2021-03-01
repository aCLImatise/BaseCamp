version 1.0

task PluginRawSciexdll {
  command <<<
    PluginRawSciex_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}