version 1.0

task ParseConfigFilepy {
  command <<<
    parseConfigFile_py
  >>>
  output {
    File out_stdout = stdout()
  }
}