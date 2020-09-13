version 1.0

task G3fromtrainingcsh {
  command <<<
    g3_from_training_csh
  >>>
  output {
    File out_stdout = stdout()
  }
}