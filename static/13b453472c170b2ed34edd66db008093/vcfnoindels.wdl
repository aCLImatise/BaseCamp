version 1.0

task Vcfnoindels {
  command <<<
    vcfnoindels
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}