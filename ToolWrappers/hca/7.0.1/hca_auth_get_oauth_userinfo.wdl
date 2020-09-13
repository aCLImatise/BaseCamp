version 1.0

task HcaAuthGetoauthuserinfo {
  input {
    String? log_level
    String hca
  }
  command <<<
    hca auth get_oauth_userinfo \
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