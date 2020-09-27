version 1.0

task Qcateval {
  input {
    String? g
    Boolean? s
    String? d
    String? n
    String? t
  }
  command <<<
    qcat_eval \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if (s) then "-s" else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""}
  >>>
  parameter_meta {
    g: ""
    s: ""
    d: ""
    n: ""
    t: ""
  }
  output {
    File out_stdout = stdout()
  }
}