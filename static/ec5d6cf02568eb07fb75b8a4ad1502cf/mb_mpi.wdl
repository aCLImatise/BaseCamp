version 1.0

task Mbmpi {
  command <<<
    mb_mpi
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}