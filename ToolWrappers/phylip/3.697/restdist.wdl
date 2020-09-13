version 1.0

task Restdist {
  command <<<
    restdist
  >>>
  output {
    File out_stdout = stdout()
  }
}