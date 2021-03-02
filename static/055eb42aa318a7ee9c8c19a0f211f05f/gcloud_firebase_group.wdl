version 1.0

task GcloudFirebaseGroup {
  input {
    String g_cloud
    String firebase
    String? optional
    String? flags
    String group
  }
  command <<<
    gcloud firebase group \
      ~{g_cloud} \
      ~{firebase} \
      ~{optional} \
      ~{flags} \
      ~{group}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    g_cloud: ""
    firebase: ""
    optional: ""
    flags: ""
    group: ""
  }
  output {
    File out_stdout = stdout()
  }
}