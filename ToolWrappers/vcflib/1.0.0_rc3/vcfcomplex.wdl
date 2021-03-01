version 1.0

task Vcfcomplex {
  command <<<
    vcfcomplex
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}