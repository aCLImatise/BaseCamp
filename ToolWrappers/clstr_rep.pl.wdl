version 1.0

task ClstrReppl {
  command <<<
    clstr_rep_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}