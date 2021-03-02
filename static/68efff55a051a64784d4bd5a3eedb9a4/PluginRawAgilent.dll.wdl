version 1.0

task PluginRawAgilentdll {
  command <<<
    PluginRawAgilent_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}