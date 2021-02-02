version 1.0

task NumPluginSvmdll {
  command <<<
    NumPluginSvm_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}