version 1.0

task Benchmark2ta {
  command <<<
    benchmark2ta
  >>>
  output {
    File out_stdout = stdout()
  }
}