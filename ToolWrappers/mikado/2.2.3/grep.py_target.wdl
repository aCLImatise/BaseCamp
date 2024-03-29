version 1.0

task GreppyTarget {
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
    grep_py target \
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
    docker: "quay.io/biocontainers/mikado:2.2.3--py38h6ed170a_0"
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