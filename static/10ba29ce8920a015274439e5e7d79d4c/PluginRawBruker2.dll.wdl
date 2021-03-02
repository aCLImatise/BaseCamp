version 1.0

task PluginRawBruker2dll {
  command <<<
    PluginRawBruker2_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}