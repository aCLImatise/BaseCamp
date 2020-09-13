version 1.0

task Dolpenny {
  command <<<
    dolpenny
  >>>
  output {
    File out_stdout = stdout()
  }
}