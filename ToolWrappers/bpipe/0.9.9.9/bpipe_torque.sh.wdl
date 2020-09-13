version 1.0

task Bpipetorquesh {
  command <<<
    bpipe_torque_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}