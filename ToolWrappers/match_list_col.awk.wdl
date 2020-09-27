version 1.0

task Matchlistcolawk {
  command <<<
    match_list_col_awk
  >>>
  output {
    File out_stdout = stdout()
  }
}