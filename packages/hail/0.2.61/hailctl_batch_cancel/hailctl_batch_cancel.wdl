version 1.0

task HailctlBatchCancel {
  input {
    String id
  }
  command <<<
    hailctl batch cancel \
      ~{id}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hail:0.2.61--py36hf1ae8f4_1"
  }
  parameter_meta {
    id: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}