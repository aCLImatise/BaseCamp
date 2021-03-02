version 1.0

task GcloudDnsProjectinfo {
  input {
    String? optional
    String? flags
    String var_command
  }
  command <<<
    gcloud dns project_info \
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