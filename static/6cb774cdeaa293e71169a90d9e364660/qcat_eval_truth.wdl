version 1.0

task Qcatevaltruth {
  input {
    Int? max
    String? g
    String? n
    String? t
    String fast_q
  }
  command <<<
    qcat_eval_truth \
      ~{fast_q} \
      ~{if defined(max) then ("--max " +  '"' + max + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    max: ""
    g: ""
    n: ""
    t: ""
    fast_q: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}