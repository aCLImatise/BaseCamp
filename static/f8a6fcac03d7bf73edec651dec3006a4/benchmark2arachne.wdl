version 1.0

task Benchmark2arachne {
  command <<<
    benchmark2arachne
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}