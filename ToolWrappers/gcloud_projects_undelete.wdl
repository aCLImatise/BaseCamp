version 1.0

task GcloudProjectsUndelete {
  input {
    String project_id
    String? optional
    String? flags
  }
  command <<<
    gcloud projects undelete \
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