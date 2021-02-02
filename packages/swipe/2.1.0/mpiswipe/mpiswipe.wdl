version 1.0

task Mpiswipe {
  command <<<
    mpiswipe
  >>>
  output {
    File out_stdout = stdout()
  }
}