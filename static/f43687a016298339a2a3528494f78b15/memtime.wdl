version 1.0

task Memtime {
  command <<<
    memtime
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}