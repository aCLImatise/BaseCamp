version 1.0

task Cdhitdivpl {
  command <<<
    cd_hit_div_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}