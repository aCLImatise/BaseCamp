version 1.0

task GreppyOut {
  input {
    Boolean? q
    String? f
    String? s
    Boolean? v
    String grep_do_tpy
    String ids
    String target
    String? out
  }
  command <<<
    grep_py out \
      ~{grep_do_tpy} \
      ~{ids} \
      ~{target} \
      ~{out} \
      ~{if (q) then "-q" else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    q: ""
    f: ""
    s: ""
    v: ""
    grep_do_tpy: ""
    ids: ""
    target: ""
    out: ""
  }
  output {
    File out_stdout = stdout()
  }
}