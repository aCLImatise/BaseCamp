version 1.0

task Vcfjoincalls {
  command <<<
    vcfjoincalls
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}