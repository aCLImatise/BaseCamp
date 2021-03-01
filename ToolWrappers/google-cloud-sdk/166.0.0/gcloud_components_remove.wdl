version 1.0

task GcloudComponentsRemove {
  input {
    String? component_id
    String? optional
    String? flags
  }
  command <<<
    gcloud components remove \
      ~{component_id} \
      ~{optional} \
      ~{flags}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    component_id: ""
    optional: ""
    flags: ""
  }
  output {
    File out_stdout = stdout()
  }
}