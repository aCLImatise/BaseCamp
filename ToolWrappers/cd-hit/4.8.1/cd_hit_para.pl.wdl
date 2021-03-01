version 1.0

task Cdhitparapl {
  command <<<
    cd_hit_para_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}