version 1.0

task Vcf2bed6plus2pl {
  command <<<
    vcf2bed6plus2_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}