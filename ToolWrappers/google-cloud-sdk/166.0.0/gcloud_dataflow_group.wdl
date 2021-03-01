version 1.0

task GcloudDataflowGroup {
  input {
    String g_cloud
    String data_flow
    String? optional
    String? flags
    String group
  }
  command <<<
    gcloud dataflow group \
      ~{g_cloud} \
      ~{data_flow} \
      ~{optional} \
      ~{flags} \
      ~{group}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    g_cloud: ""
    data_flow: ""
    optional: ""
    flags: ""
    group: ""
  }
  output {
    File out_stdout = stdout()
  }
}