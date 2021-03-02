version 1.0

task Vcfuniqalleles {
  command <<<
    vcfuniqalleles
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}