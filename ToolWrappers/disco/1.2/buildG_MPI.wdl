version 1.0

task BuildGMPI {
  command <<<
    buildG_MPI
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}