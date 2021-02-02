version 1.0

task SnpgenieWithinGroupProcessorpl {
  command <<<
    snpgenie_within_group_processor_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}