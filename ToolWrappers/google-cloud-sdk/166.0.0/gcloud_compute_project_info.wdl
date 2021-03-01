version 1.0

task GcloudComputeProjectinfo {
  input {
    String add_metadata
    String describe
    String remove_metadata
    String set_usage_bucket
  }
  command <<<
    gcloud compute project_info \
      ~{add_metadata} \
      ~{describe} \
      ~{remove_metadata} \
      ~{set_usage_bucket}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    add_metadata: "Add or update project-wide metadata."
    describe: "Describe the Google Compute Engine project resource."
    remove_metadata: "Remove project-wide metadata entries."
    set_usage_bucket: "Set the usage reporting bucket for a project."
  }
  output {
    File out_stdout = stdout()
  }
}