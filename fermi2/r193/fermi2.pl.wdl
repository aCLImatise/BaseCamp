version 1.0

task Fermi2pl {
  command <<<
    fermi2_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}