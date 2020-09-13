version 1.0

task Prefetch2108 {
  command <<<
    prefetch_2_10_8
  >>>
  output {
    File out_stdout = stdout()
  }
}