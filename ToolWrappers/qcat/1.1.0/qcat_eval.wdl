version 1.0

task Qcateval {
  input {
    String? g
    Boolean? s
    String? d
    String? n
    String? t
    String fast_q
  }
  command <<<
    qcat_eval \
      ~{fast_q} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if (s) then "-s" else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    g: ""
    s: ""
    d: ""
    n: ""
    t: ""
    fast_q: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}