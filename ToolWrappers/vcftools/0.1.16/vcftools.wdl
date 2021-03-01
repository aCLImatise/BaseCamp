version 1.0

task Vcftools {
  command <<<
    vcftools
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}