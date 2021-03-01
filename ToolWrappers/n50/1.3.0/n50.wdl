version 1.0

task N50 {
  command <<<
    n50
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}