version 1.0

task GcloudDebugDefaulttest {
  input {
    String g_cloud
    String debug
    String? optional
    String? flags
    String group
  }
  command <<<
    gcloud debug default_test \
      ~{g_cloud} \
      ~{debug} \
      ~{optional} \
      ~{flags} \
      ~{group}
  >>>
  runtime {
    docker: "None"
  }
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