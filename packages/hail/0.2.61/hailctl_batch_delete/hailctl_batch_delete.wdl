version 1.0

task HailctlBatchDelete {
  input {
    String batch_id
  }
  command <<<
    hailctl batch delete \
      ~{batch_id}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hail:0.2.61--py36hf1ae8f4_1"
  }
  parameter_meta {
    batch_id: "ID number of batch to be deleted"
  }
  output {
    File out_stdout = stdout()
  }
}