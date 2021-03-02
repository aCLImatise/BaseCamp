version 1.0

task Matchlistcolawk {
  command <<<
    match_list_col_awk
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}