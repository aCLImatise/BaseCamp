version 1.0

task GcloudMlFlags {
  input {
    String g_cloud
    String ml
    String? optional
    String? flags
    String group
  }
  command <<<
    gcloud ml flags \
      ~{g_cloud} \
      ~{ml} \
      ~{optional} \
      ~{flags} \
      ~{group}
  >>>
  parameter_meta {
    g_cloud: ""
    ml: ""
    optional: ""
    flags: ""
    group: ""
  }
  output {
    File out_stdout = stdout()
  }
}