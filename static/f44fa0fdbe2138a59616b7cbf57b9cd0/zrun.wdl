version 1.0

task Zrun {
  command <<<
    zrun
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}