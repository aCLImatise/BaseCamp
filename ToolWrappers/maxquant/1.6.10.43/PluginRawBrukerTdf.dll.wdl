version 1.0

task PluginRawBrukerTdfdll {
  command <<<
    PluginRawBrukerTdf_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}