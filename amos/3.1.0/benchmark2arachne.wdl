version 1.0

task Benchmark2arachne {
  command <<<
    benchmark2arachne
  >>>
  output {
    File out_stdout = stdout()
  }
}