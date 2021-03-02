version 1.0

task Taxprof {
  command <<<
    taxprof
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}