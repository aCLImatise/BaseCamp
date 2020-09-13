version 1.0

task BuildGMPI {
  command <<<
    buildG_MPI
  >>>
  output {
    File out_stdout = stdout()
  }
}