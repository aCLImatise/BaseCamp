version 1.0

task Snns {
  command <<<
    snns
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}