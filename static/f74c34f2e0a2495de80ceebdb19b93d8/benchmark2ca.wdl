version 1.0

task Benchmark2ca {
  command <<<
    benchmark2ca
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}