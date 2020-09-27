version 1.0

task PretextGraphavx2 {
  command <<<
    PretextGraph_avx2
  >>>
  output {
    File out_stdout = stdout()
  }
}