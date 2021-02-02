version 1.0

task SelectClusterCogspl {
  command <<<
    SelectClusterCogs_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}