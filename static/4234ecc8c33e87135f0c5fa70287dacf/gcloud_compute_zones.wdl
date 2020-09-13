version 1.0

task GcloudComputeZones {
  input {
    String? optional
    String? flags
    String var_command
  }
  command <<<
    gcloud compute zones \
      ~{optional} \
      ~{flags} \
      ~{var_command}
  >>>
  parameter_meta {
    optional: ""
    flags: ""
    var_command: ""
  }
  output {
    File out_stdout = stdout()
  }
}