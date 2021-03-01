version 1.0

task FastprotMpi {
  command <<<
    fastprot_mpi
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}