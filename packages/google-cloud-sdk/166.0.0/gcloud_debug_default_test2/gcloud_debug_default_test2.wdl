version 1.0

task GcloudDebugDefaulttest2 {
  input {
    String g_cloud
    String debug
    String? optional
    String? flags
    String group
  }
  command <<<
    gcloud debug default_test2 \
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