version 1.0

task PluginRawBruker2dll {
  command <<<
    PluginRawBruker2_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}