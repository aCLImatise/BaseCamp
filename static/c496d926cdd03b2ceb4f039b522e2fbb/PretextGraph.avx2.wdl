version 1.0

task PretextGraphavx2 {
  command <<<
    PretextGraph_avx2
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}