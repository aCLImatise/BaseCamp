version 1.0

task Cdhitdivpl {
  command <<<
    cd_hit_div_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}