version 1.0

task Vcfcountalleles {
  command <<<
    vcfcountalleles
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}