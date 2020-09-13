version 1.0

task FastprotMpi {
  command <<<
    fastprot_mpi
  >>>
  output {
    File out_stdout = stdout()
  }
}