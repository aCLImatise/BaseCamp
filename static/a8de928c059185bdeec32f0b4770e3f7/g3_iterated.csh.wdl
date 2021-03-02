version 1.0

task G3iteratedcsh {
  command <<<
    g3_iterated_csh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}