version 1.0

task ClstrListpl {
  command <<<
    clstr_list_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}