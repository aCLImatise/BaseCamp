version 1.0

task Novorunpl {
  command <<<
    novorun_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}