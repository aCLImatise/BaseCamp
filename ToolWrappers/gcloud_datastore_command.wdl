version 1.0

task GcloudDatastoreCommand {
  input {
    String g_cloud
    String datastore
    String? optional
    String? flags
    String var_command
  }
  command <<<
    gcloud datastore command \
      ~{g_cloud} \
      ~{datastore} \
      ~{optional} \
      ~{flags} \
      ~{var_command}
  >>>
  parameter_meta {
    g_cloud: ""
    datastore: ""
    optional: ""
    flags: ""
    var_command: ""
  }
  output {
    File out_stdout = stdout()
  }
}