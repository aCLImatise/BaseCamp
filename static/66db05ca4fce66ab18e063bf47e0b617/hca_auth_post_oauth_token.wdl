version 1.0

task HcaAuthPostOauthToken {
  input {
    String? log_level
    String hca
  }
  command <<<
    hca auth post-oauth-token \
      ~{hca} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""}
  >>>
  parameter_meta {
    log_level: ""
    hca: ""
  }
}