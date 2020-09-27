version 1.0

task G3iteratedcsh {
  command <<<
    g3_iterated_csh
  >>>
  output {
    File out_stdout = stdout()
  }
}