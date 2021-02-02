version 1.0

task ClstrRenumberpl {
  command <<<
    clstr_renumber_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}