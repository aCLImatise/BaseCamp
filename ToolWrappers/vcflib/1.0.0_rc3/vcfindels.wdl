version 1.0

task Vcfindels {
  command <<<
    vcfindels
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}