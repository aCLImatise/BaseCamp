version 1.0

task GcloudFirebaseFlags {
  input {
    String g_cloud
    String firebase
    String? optional
    String? flags
    String group
  }
  command <<<
    gcloud firebase flags \
      ~{g_cloud} \
      ~{firebase} \
      ~{optional} \
      ~{flags} \
      ~{group}
  >>>
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