version 1.0

task Mpipl {
  command <<<
    mpi_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}