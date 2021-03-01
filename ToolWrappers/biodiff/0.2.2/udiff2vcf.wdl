version 1.0

task Udiff2vcf {
  command <<<
    udiff2vcf
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}