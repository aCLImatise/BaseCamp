version 1.0

task PluginRawMzXmldll {
  command <<<
    PluginRawMzXml_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}