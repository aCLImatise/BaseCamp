version 1.0

task SnpgenieWithinGrouppl {
  command <<<
    snpgenie_within_group_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}