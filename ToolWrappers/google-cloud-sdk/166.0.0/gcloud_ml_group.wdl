version 1.0

task GcloudMlGroup {
  input {
    String g_cloud
    String ml
    String? optional
    String? flags
    String group
  }
  command <<<
    gcloud ml group \
      ~{g_cloud} \
      ~{ml} \
      ~{optional} \
      ~{flags} \
      ~{group}
  >>>
  runtime {
    docker: "None"
  }
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