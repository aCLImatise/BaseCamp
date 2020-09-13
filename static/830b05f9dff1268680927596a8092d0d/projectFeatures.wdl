version 1.0

task ProjectFeatures {
  command <<<
    projectFeatures
  >>>
  output {
    File out_stdout = stdout()
  }
}