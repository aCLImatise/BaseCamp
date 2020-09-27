version 1.0

task SnpgenieBetweenGrouppl {
  command <<<
    snpgenie_between_group_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}