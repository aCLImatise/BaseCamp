version 1.0

task Fermi {
  command <<<
    fermi
  >>>
  output {
    File out_stdout = stdout()
  }
}