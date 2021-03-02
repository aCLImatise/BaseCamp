version 1.0

task Bpipetorquesh {
  command <<<
    bpipe_torque_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/bpipe:0.9.10--0"
  }
  output {
    File out_stdout = stdout()
  }
}