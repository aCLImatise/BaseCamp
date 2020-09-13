version 1.0

task Fermi2 {
  command <<<
    fermi2
  >>>
  output {
    File out_stdout = stdout()
  }
}