version 1.0

task MpiIprscan {
  command <<<
    mpi_iprscan
  >>>
  output {
    File out_stdout = stdout()
  }
}