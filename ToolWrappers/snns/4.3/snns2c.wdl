version 1.0

task Snns2c {
  command <<<
    snns2c
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}