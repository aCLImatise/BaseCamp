version 1.0

task Benchmark2ca {
  command <<<
    benchmark2ca
  >>>
  output {
    File out_stdout = stdout()
  }
}