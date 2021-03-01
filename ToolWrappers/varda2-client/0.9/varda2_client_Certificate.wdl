version 1.0

task Varda2clientCertificate {
  input {
    Boolean? v
    String? c
    String? s
    String? p
    Int varda_two_client
  }
  command <<<
    varda2_client Certificate \
      ~{varda_two_client} \
      ~{if (v) then "-v" else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/varda2-client:0.9--py_0"
  }
  parameter_meta {
    v: ""
    c: ""
    s: ""
    p: ""
    varda_two_client: ""
  }
  output {
    File out_stdout = stdout()
  }
}