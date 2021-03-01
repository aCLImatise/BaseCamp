version 1.0

task Geno2lfmm {
  command <<<
    geno2lfmm
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}