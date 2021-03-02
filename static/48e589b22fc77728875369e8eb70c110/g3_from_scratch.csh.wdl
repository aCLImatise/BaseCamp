version 1.0

task G3fromscratchcsh {
  command <<<
    g3_from_scratch_csh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}