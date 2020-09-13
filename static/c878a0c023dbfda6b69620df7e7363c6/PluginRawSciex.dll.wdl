version 1.0

task PluginRawSciexdll {
  command <<<
    PluginRawSciex_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}