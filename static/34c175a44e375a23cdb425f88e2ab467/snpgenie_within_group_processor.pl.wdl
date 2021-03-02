version 1.0

task SnpgenieWithinGroupProcessorpl {
  command <<<
    snpgenie_within_group_processor_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}