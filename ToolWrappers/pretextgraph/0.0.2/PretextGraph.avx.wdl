version 1.0

task PretextGraphavx {
  command <<<
    PretextGraph_avx
  >>>
  output {
    File out_stdout = stdout()
  }
}