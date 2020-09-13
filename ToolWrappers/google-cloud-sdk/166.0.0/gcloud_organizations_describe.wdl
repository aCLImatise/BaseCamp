version 1.0

task GcloudOrganizationsDescribe {
  input {
    String organization_id
    String? optional
    String? flags
  }
  command <<<
    gcloud organizations describe \
      ~{organization_id} \
      ~{optional} \
      ~{flags}
  >>>
  parameter_meta {
    organization_id: ""
    optional: ""
    flags: ""
  }
  output {
    File out_stdout = stdout()
  }
}