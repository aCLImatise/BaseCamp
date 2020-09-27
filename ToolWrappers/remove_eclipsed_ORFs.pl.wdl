version 1.0

task RemoveEclipsedORFspl {
  command <<<
    remove_eclipsed_ORFs_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}