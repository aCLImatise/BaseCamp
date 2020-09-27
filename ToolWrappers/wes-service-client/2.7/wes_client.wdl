version 1.0

task Wesclient {
  input {
    Boolean? quiet
    String? proto
    String? auth
    String? host
  }
  command <<<
    wes_client \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(proto) then ("--proto " +  '"' + proto + '"') else ""} \
      ~{if defined(auth) then ("--auth " +  '"' + auth + '"') else ""} \
      ~{if defined(host) then ("--host " +  '"' + host + '"') else ""}
  >>>
  parameter_meta {
    quiet: ""
    proto: ""
    auth: ""
    host: ""
  }
  output {
    File out_stdout = stdout()
  }
}