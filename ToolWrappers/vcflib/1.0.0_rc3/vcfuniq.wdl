version 1.0

task Vcfuniq {
  command <<<
    vcfuniq
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}