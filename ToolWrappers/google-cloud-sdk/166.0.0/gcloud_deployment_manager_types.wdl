version 1.0

task GcloudDeploymentmanagerTypes {
  input {
    String? optional
    String? flags
    String var_command
  }
  command <<<
    gcloud deployment_manager types \
      ~{optional} \
      ~{flags} \
      ~{var_command}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    optional: ""
    flags: ""
    var_command: ""
  }
  output {
    File out_stdout = stdout()
  }
}