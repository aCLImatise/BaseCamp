version 1.0

task Probdist {
  command <<<
    probdist
  >>>
  output {
    File out_stdout = stdout()
  }
}