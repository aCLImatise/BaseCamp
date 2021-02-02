version 1.0

task PluginRawBrukerTdfdll {
  command <<<
    PluginRawBrukerTdf_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}