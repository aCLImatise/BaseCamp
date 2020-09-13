version 1.0

task Injectseparatorpl {
  command <<<
    injectseparator_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}