version 1.0

task G3fromtrainingcsh {
  command <<<
    g3_from_training_csh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}