version 1.0

task Vcfgenosamplenames {
  command <<<
    vcfgenosamplenames
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}