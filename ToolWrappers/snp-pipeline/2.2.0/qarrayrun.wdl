version 1.0

task Qarrayrun {
  command <<<
    qarrayrun
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}