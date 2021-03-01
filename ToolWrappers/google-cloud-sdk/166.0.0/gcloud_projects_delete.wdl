version 1.0

task GcloudProjectsDelete {
  input {
    String project_id
    String? optional
    String? flags
  }
  command <<<
    gcloud projects delete \
      ~{project_id} \
      ~{optional} \
      ~{flags}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    project_id: ""
    optional: ""
    flags: ""
  }
  output {
    File out_stdout = stdout()
  }
}