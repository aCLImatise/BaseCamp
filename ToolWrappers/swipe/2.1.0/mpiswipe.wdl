version 1.0

task Mpiswipe {
  command <<<
    mpiswipe
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}