version 1.0

task Mpipl {
  command <<<
    mpi_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}