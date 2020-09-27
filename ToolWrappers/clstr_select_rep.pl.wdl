version 1.0

task ClstrSelectReppl {
  command <<<
    clstr_select_rep_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}