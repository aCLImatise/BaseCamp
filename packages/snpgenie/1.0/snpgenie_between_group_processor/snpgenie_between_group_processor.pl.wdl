version 1.0

task SnpgenieBetweenGroupProcessorpl {
  command <<<
    snpgenie_between_group_processor_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}