version 1.0

task WesClient {
  input {
    String? host
    String? auth
    String? proto
    Boolean? quiet
  }
  command <<<
    wes-client \
      ~{if defined(host) then ("--host " +  '"' + host + '"') else ""} \
      ~{if defined(auth) then ("--auth " +  '"' + auth + '"') else ""} \
      ~{if defined(proto) then ("--proto " +  '"' + proto + '"') else ""} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    host: ""
    auth: ""
    proto: ""
    quiet: ""
  }
}