version 1.0

task PluginRawMzMldll {
  command <<<
    PluginRawMzMl_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}