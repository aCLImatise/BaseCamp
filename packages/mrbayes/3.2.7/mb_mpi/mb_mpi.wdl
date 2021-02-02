version 1.0

task Mbmpi {
  command <<<
    mb_mpi
  >>>
  output {
    File out_stdout = stdout()
  }
}