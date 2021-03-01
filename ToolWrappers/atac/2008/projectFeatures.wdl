version 1.0

task ProjectFeatures {
  command <<<
    projectFeatures
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}