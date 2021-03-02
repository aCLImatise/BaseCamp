version 1.0

task HailctlBatchWait {
  input {
    String batch_id
  }
  command <<<
    hailctl batch wait \
      ~{batch_id}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hail:0.2.61--py36hf1ae8f4_1"
  }
  parameter_meta {
    batch_id: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}