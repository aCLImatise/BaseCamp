version 1.0

task GcloudOrganizationsSetiampolicy {
  input {
    String organization_id
    String policy_file
    String? optional
    String? flags
  }
  command <<<
    gcloud organizations set_iam_policy \
      ~{organization_id} \
      ~{policy_file} \
      ~{optional} \
      ~{flags}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    organization_id: ""
    policy_file: ""
    optional: ""
    flags: ""
  }
  output {
    File out_stdout = stdout()
  }
}