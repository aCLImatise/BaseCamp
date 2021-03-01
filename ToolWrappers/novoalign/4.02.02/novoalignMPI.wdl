version 1.0

task NovoalignMPI {
  command <<<
    novoalignMPI
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}