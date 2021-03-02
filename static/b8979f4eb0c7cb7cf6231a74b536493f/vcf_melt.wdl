version 1.0

task VcfMelt {
  command <<<
    vcf_melt
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}