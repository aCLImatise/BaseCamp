version 1.0

task Vcfafpath {
  command <<<
    vcfafpath
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}