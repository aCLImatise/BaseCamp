version 1.0

task Bpipetorquesh {
  command <<<
    bpipe_torque_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}