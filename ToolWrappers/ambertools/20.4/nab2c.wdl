version 1.0

task Nab2c {
  command <<<
    nab2c
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}