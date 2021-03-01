version 1.0

task Vcfnosnps {
  command <<<
    vcfnosnps
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}