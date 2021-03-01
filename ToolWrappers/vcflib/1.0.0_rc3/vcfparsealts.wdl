version 1.0

task Vcfparsealts {
  command <<<
    vcfparsealts
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}