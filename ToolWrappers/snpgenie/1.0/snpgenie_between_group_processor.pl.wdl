version 1.0

task SnpgenieBetweenGroupProcessorpl {
  command <<<
    snpgenie_between_group_processor_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}