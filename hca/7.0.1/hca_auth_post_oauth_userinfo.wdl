version 1.0

task HcaAuthPostoauthuserinfo {
  input {
    String? log_level
    String hca
  }
  command <<<
    hca auth post_oauth_userinfo \
      ~{hca} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""}
  >>>
  parameter_meta {
    log_level: ""
    hca: ""
  }
  output {
    File out_stdout = stdout()
  }
}