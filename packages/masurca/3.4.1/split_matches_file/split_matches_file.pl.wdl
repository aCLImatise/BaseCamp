version 1.0

task SplitMatchesFilepl {
  command <<<
    split_matches_file_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}