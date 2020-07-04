version 1.0

task Grep.pyOut {
  input {
    Boolean? v
    String? s
    String? f
    Boolean? q
    String grep_do_tpy
    String ids
    String target
    String? out
  }
  command <<<
    grep.py out \
      ~{grep_do_tpy} \
      ~{ids} \
      ~{target} \
      ~{out} \
      ~{true="-v" false="" v} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{true="-q" false="" q}
  >>>
  parameter_meta {
    v: ""
    s: ""
    f: ""
    q: ""
    grep_do_tpy: ""
    ids: ""
    target: ""
    out: ""
  }
}