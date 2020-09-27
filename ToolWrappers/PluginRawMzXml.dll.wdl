version 1.0

task PluginRawMzXmldll {
  command <<<
    PluginRawMzXml_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}