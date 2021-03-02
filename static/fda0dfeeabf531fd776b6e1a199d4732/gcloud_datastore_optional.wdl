version 1.0

task GcloudDatastoreOptional {
  input {
    String? flags
    String var_command
  }
  command <<<
    gcloud datastore optional \
      ~{flags} \
      ~{var_command}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    flags: ""
    var_command: ""
  }
  output {
    File out_stdout = stdout()
  }
}