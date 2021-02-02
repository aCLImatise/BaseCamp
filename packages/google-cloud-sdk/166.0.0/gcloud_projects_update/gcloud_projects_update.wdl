version 1.0

task GcloudProjectsUpdate {
  input {
    String project_id
    String? optional
    String? flags
  }
  command <<<
    gcloud projects update \
      ~{project_id} \
      ~{optional} \
      ~{flags}
  >>>
  parameter_meta {
    project_id: ""
    optional: ""
    flags: ""
  }
  output {
    File out_stdout = stdout()
  }
}