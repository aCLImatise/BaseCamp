version 1.0

task GcloudComponentsInstall {
  input {
    String? component_ids
    String? optional
    String? flags
  }
  command <<<
    gcloud components install \
      ~{component_ids} \
      ~{optional} \
      ~{flags}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    component_ids: ""
    optional: ""
    flags: ""
  }
  output {
    File out_stdout = stdout()
  }
}