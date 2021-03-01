version 1.0

task TransabyssmergePATH {
  input {
    Int? max_k
    Int? mink
    String trans_abyss_merge
  }
  command <<<
    transabyss_merge PATH \
      ~{trans_abyss_merge} \
      ~{if defined(max_k) then ("--maxk " +  '"' + max_k + '"') else ""} \
      ~{if defined(mink) then ("--mink " +  '"' + mink + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    max_k: ""
    mink: ""
    trans_abyss_merge: ""
  }
  output {
    File out_stdout = stdout()
  }
}