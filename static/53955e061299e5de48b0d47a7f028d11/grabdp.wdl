version 1.0

task Grabdp {
  input {
    File? db
    String? id
    Int? dp_style
    Int? dump_match_probs
  }
  command <<<
    grabdp \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""} \
      ~{if defined(id) then ("-id " +  '"' + id + '"') else ""} \
      ~{if defined(dp_style) then ("-dpstyle " +  '"' + dp_style + '"') else ""} \
      ~{if defined(dump_match_probs) then ("-dump_match_probs " +  '"' + dump_match_probs + '"') else ""}
  >>>
  parameter_meta {
    db: "required if -match_probs not specified"
    id: "optional"
    dp_style: "optional -- create <runname>.pdoc\\nposterior decoding of model and\\nfirst db sequence or -id sequence.\\nuse view_pdoc to inspect."
    dump_match_probs: "If 1, then dump the model match probabilities\\nin a rdb file name <runname>.match-rdb\\n"
  }
  output {
    File out_stdout = stdout()
  }
}