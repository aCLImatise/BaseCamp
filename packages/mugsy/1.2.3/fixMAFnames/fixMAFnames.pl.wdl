version 1.0

task FixMAFnamespl {
  command <<<
    fixMAFnames_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}