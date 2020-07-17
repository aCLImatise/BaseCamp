version 1.0

task Varda2ClientVersion {
  input {
    String? p
    String? s
    String? c
    Boolean? v
    String varda_two_client
  }
  command <<<
    varda2-client version \
      ~{varda_two_client} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    p: ""
    s: ""
    c: ""
    v: ""
    varda_two_client: ""
  }
}