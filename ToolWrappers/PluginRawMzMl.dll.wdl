version 1.0

task PluginRawMzMldll {
  command <<<
    PluginRawMzMl_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}