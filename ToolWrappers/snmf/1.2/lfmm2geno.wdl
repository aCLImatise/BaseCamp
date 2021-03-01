version 1.0

task Lfmm2geno {
  command <<<
    lfmm2geno
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}