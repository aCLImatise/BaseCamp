version 1.0

task Vcfmultiwayscripts {
  command <<<
    vcfmultiwayscripts
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}