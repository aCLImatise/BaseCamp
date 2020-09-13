version 1.0

task CreateSrFrg {
  command <<<
    create_sr_frg
  >>>
  output {
    File out_stdout = stdout()
  }
}