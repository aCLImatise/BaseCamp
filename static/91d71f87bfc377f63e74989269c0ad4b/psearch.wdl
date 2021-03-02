version 1.0

task Psearch {
  command <<<
    psearch
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}