version 1.0

task GcloudSourceFlags {
  input {
    String g_cloud
    String source
    String? optional
    String? flags
    String group
  }
  command <<<
    gcloud source flags \
      ~{g_cloud} \
      ~{source} \
      ~{optional} \
      ~{flags} \
      ~{group}
  >>>
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