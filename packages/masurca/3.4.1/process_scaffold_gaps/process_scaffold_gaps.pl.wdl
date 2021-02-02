version 1.0

task ProcessScaffoldGapspl {
  command <<<
    process_scaffold_gaps_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}