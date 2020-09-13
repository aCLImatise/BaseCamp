version 1.0

task Obo2apopl {
  command <<<
    obo2apo_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}