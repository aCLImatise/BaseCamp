version 1.0

task CloseScaffoldGapssh {
  input {
    Int? t
    String? q
    String? r
    String merge_scaffolds_dots_h
  }
  command <<<
    close_scaffold_gaps_sh \
      ~{merge_scaffolds_dots_h} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(q) then ("-q " +  '"' + q + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""}
  >>>
  parameter_meta {
    t: ""
    q: ""
    r: ""
    merge_scaffolds_dots_h: ""
  }
  output {
    File out_stdout = stdout()
  }
}