version 1.0

task CONSENTcorrection {
  input {
    String? c
    String? p
    Int? e
    String? f
    String? l
    Int? s
    Int? k
    File? a
  }
  command <<<
    CONSENT_correction \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(k) then ("-k " +  '"' + k + '"') else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/consent:2.2.2--h8b12597_0"
  }
  parameter_meta {
    c: ""
    p: ""
    e: ""
    f: ""
    l: ""
    s: ""
    k: ""
    a: ""
  }
  output {
    File out_stdout = stdout()
  }
}