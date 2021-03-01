version 1.0

task Bigsi {
  command <<<
    bigsi
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}