version 1.0

task GcloudSourceGroup {
  input {
    String g_cloud
    String source
    String? optional
    String? flags
    String group
  }
  command <<<
    gcloud source group \
      ~{g_cloud} \
      ~{source} \
      ~{optional} \
      ~{flags} \
      ~{group}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    g_cloud: ""
    source: ""
    optional: ""
    flags: ""
    group: ""
  }
  output {
    File out_stdout = stdout()
  }
}