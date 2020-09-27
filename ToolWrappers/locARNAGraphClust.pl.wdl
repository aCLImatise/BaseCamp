version 1.0

task LocARNAGraphClustpl {
  command <<<
    locARNAGraphClust_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}