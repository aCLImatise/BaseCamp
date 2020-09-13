version 1.0

task PretextGraphsse41 {
  command <<<
    PretextGraph_sse41
  >>>
  output {
    File out_stdout = stdout()
  }
}