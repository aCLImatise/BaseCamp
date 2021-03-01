version 1.0

task PluginRawBrukerTdfdllconfig {
  command <<<
    PluginRawBrukerTdf_dll_config
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}