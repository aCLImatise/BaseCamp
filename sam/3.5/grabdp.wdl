version 1.0

task Grabdp {
  input {
    String? required_or_modelfile
    String? db
    String? id
    String? dp_style
    String? dump_match_probs
  }
  command <<<
    grabdp \
      ~{if defined(required_or_modelfile) then ("-i " +  '"' + required_or_modelfile + '"') else ""} \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""} \
      ~{if defined(id) then ("-id " +  '"' + id + '"') else ""} \
      ~{if defined(dp_style) then ("-dpstyle " +  '"' + dp_style + '"') else ""} \
      ~{if defined(dump_match_probs) then ("-dump_match_probs " +  '"' + dump_match_probs + '"') else ""}
  >>>
  parameter_meta {
    required_or_modelfile: "required (or -modelfile)"
    db: "required if -match_probs not specified"
    id: "optional"
    dp_style: "optional -- create <runname>.pdoc posterior decoding of model and first db sequence or -id sequence. use view_pdoc to inspect."
    dump_match_probs: "If 1, then dump the model match probabilities in a rdb file name <runname>.match-rdb"
  }
}