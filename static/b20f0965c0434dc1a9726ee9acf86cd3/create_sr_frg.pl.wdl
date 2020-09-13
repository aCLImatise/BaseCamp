version 1.0

task CreateSrFrgpl {
  command <<<
    create_sr_frg_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}