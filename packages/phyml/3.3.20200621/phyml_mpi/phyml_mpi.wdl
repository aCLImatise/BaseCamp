version 1.0

task Phymlmpi {
  command <<<
    phyml_mpi
  >>>
  output {
    File out_stdout = stdout()
  }
}