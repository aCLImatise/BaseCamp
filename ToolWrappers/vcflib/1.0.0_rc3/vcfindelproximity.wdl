version 1.0

task Vcfindelproximity {
  command <<<
    vcfindelproximity
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}