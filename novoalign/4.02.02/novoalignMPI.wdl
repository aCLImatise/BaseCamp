version 1.0

task NovoalignMPI {
  command <<<
    novoalignMPI
  >>>
  output {
    File out_stdout = stdout()
  }
}