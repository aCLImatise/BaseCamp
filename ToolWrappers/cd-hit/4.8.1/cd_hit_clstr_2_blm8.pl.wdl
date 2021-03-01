version 1.0

task Cdhitclstr2Blm8pl {
  command <<<
    cd_hit_clstr_2_blm8_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}