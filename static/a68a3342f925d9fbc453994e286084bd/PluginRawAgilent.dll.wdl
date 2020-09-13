version 1.0

task PluginRawAgilentdll {
  command <<<
    PluginRawAgilent_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}