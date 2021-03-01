version 1.0

task MkCSGB2312 {
  command <<<
    mkCSGB2312
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}