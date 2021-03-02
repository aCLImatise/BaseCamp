version 1.0

task PretextGraphavx {
  command <<<
    PretextGraph_avx
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}