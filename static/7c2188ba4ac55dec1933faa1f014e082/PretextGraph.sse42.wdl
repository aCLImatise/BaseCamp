version 1.0

task PretextGraphsse42 {
  command <<<
    PretextGraph_sse42
  >>>
  output {
    File out_stdout = stdout()
  }
}