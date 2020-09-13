version 1.0

task GcloudAuthRevoke {
  input {
    String? accounts
    String? optional
    String? flags
  }
  command <<<
    gcloud auth revoke \
      ~{accounts} \
      ~{optional} \
      ~{flags}
  >>>
  parameter_meta {
    accounts: ""
    optional: ""
    flags: ""
  }
  output {
    File out_stdout = stdout()
  }
}