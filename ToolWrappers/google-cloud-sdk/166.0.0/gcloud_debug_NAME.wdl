version 1.0

task GcloudDebugNAME {
  input {
    String g_cloud
    String debug
    String? optional
    String? flags
    String group
  }
  command <<<
    gcloud debug NAME \
      ~{g_cloud} \
      ~{debug} \
      ~{optional} \
      ~{flags} \
      ~{group}
  >>>
  parameter_meta {
    g_cloud: ""
    debug: ""
    optional: ""
    flags: ""
    group: ""
  }
  output {
    File out_stdout = stdout()
  }
}