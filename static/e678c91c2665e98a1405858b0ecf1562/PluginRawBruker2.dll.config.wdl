version 1.0

task PluginRawBruker2dllconfig {
  command <<<
    PluginRawBruker2_dll_config
  >>>
  output {
    File out_stdout = stdout()
  }
}