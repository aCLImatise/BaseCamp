version 1.0

task PluginRawBrukerTdfdllconfig {
  command <<<
    PluginRawBrukerTdf_dll_config
  >>>
  output {
    File out_stdout = stdout()
  }
}