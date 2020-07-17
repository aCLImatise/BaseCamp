version 1.0

task HcaAuthGetOpenidConfiguration {
  input {
    String? host
  }
  command <<<
    hca auth get-openid-configuration \
      ~{if defined(host) then ("--host " +  '"' + host + '"') else ""}
  >>>
  parameter_meta {
    host: "Must be `auth.data.humancellatlas.org`."
  }
}