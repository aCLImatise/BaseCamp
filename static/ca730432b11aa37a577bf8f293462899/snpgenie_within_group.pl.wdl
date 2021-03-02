version 1.0

task SnpgenieWithinGrouppl {
  command <<<
    snpgenie_within_group_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}