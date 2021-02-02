version 1.0

task RemoveGapspl {
  command <<<
    removeGaps_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}