version 1.0

task Certsync {
  input {
    Boolean? user
    Boolean? quiet
    String system_ca_bundle_dot_crt
  }
  command <<<
    cert_sync \
      ~{system_ca_bundle_dot_crt} \
      ~{if (user) then "--user" else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    user: ""
    quiet: ""
    system_ca_bundle_dot_crt: ""
  }
  output {
    File out_stdout = stdout()
  }
}