version 1.0

task TransabyssMergePATH {
  input {
    Int? mink
    Int? max_k
    String trans_abyss_merge
  }
  command <<<
    transabyss-merge PATH \
      ~{trans_abyss_merge} \
      ~{if defined(mink) then ("--mink " +  '"' + mink + '"') else ""} \
      ~{if defined(max_k) then ("--maxk " +  '"' + max_k + '"') else ""}
  >>>
  parameter_meta {
    mink: ""
    max_k: ""
    trans_abyss_merge: ""
  }
}