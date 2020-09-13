version 1.0

task NumPluginBase2dll {
  command <<<
    NumPluginBase2_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}