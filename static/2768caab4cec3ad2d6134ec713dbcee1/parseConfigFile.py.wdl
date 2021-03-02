version 1.0

task ParseConfigFilepy {
  command <<<
    parseConfigFile_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}