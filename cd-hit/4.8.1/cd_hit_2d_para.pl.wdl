version 1.0

task Cdhit2dparapl {
  command <<<
    cd_hit_2d_para_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}