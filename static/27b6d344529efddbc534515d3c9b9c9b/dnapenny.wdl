version 1.0

task Dnapenny {
  command <<<
    dnapenny
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}