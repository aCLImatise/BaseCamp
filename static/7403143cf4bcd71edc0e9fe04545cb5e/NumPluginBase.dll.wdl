version 1.0

task NumPluginBasedll {
  command <<<
    NumPluginBase_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}