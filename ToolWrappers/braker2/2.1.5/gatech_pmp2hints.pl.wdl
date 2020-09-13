version 1.0

task GatechPmp2hintspl {
  command <<<
    gatech_pmp2hints_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}