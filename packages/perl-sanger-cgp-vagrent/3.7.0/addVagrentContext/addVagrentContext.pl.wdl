version 1.0

task AddVagrentContextpl {
  command <<<
    addVagrentContext_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}