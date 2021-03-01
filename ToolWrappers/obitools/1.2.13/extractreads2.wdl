version 1.0

task Extractreads2 {
  command <<<
    extractreads2
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}