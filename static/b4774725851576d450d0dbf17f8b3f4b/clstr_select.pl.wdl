version 1.0

task ClstrSelectpl {
  command <<<
    clstr_select_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}