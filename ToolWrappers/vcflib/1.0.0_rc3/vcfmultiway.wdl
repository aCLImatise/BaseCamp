version 1.0

task Vcfmultiway {
  command <<<
    vcfmultiway
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}