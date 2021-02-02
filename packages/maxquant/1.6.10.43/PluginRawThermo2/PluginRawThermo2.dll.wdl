version 1.0

task PluginRawThermo2dll {
  command <<<
    PluginRawThermo2_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}