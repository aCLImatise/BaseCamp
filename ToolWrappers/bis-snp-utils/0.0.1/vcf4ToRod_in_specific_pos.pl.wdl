version 1.0

task Vcf4ToRodInSpecificPospl {
  command <<<
    vcf4ToRod_in_specific_pos_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}