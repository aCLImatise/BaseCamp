version 1.0

task Vcfqualfilter {
  command <<<
    vcfqualfilter
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}