version 1.0

task Frestdist {
  command <<<
    frestdist
  >>>
  output {
    File out_stdout = stdout()
  }
}