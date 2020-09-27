version 1.0

task Prefetch2 {
  command <<<
    prefetch_2
  >>>
  output {
    File out_stdout = stdout()
  }
}