version 1.0

task MpiIprscan {
  command <<<
    mpi_iprscan
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}