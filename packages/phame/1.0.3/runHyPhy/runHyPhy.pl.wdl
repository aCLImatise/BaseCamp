version 1.0

task RunHyPhypl {
  command <<<
    runHyPhy_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}