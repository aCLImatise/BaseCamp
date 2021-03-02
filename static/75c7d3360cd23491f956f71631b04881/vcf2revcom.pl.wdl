version 1.0

task Vcf2revcompl {
  command <<<
    vcf2revcom_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}