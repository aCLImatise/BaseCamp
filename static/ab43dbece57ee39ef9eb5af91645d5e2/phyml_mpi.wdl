version 1.0

task Phymlmpi {
  command <<<
    phyml_mpi
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}