version 1.0

task Ncoils {
  command <<<
    ncoils
  >>>
  output {
    File out_stdout = stdout()
  }
}