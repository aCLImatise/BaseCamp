version 1.0

task Fuderep {
  command <<<
    fu_derep
  >>>
  output {
    File out_stdout = stdout()
  }
}