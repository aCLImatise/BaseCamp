version 1.0

task GcloudProjectsSetiampolicy {
  input {
    String project_id
    String policy_file
    String? optional
    String? flags
  }
  command <<<
    gcloud projects set_iam_policy \
      ~{project_id} \
      ~{policy_file} \
      ~{optional} \
      ~{flags}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    project_id: ""
    policy_file: ""
    optional: ""
    flags: ""
  }
  output {
    File out_stdout = stdout()
  }
}