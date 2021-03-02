version 1.0

task SnpgenieBetweenGrouppl {
  command <<<
    snpgenie_between_group_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}