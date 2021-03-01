version 1.0

task Vcfindex {
  command <<<
    vcfindex
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}