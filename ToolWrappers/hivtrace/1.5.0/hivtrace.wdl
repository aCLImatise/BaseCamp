version 1.0

task Hivtrace {
  input {
    Boolean? m
    String? t
    String? r
    String? a
    String? i
  }
  command <<<
    hivtrace \
      ~{if (m) then "-m" else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    m: ""
    t: ""
    r: ""
    a: ""
    i: ""
  }
  output {
    File out_stdout = stdout()
  }
}