version 1.0

task Dxjobutildxlink {
  input {
    String data_object_id
  }
  command <<<
    dx_jobutil_dxlink \
      ~{data_object_id}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dxpy:0.307.0--pyh5e36f6f_0"
  }
  parameter_meta {
    data_object_id: "Data object ID or \\\"<Project ID>:<Data object ID>\\\" to package\\ninto a DNAnexus link"
  }
  output {
    File out_stdout = stdout()
  }
}