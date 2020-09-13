version 1.0

task Grabdp3 {
  input {
    File? required_or_modelfile
    File? db
    String? id
    Int? dp_style
    Int? dump_match_probs
    String? option
    String grab_dp
    String run_name
  }
  command <<<
    grabdp _3 \
      ~{grab_dp} \
      ~{run_name} \
      ~{if defined(required_or_modelfile) then ("-i " +  '"' + required_or_modelfile + '"') else ""} \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""} \
      ~{if defined(id) then ("-id " +  '"' + id + '"') else ""} \
      ~{if defined(dp_style) then ("-dpstyle " +  '"' + dp_style + '"') else ""} \
      ~{if defined(dump_match_probs) then ("-dump_match_probs " +  '"' + dump_match_probs + '"') else ""} \
      ~{if defined(option) then ("-option " +  '"' + option + '"') else ""}
  >>>
  parameter_meta {
    required_or_modelfile: "required (or -modelfile)"
    db: "required if -match_probs not specified"
    id: "optional"
    dp_style: "optional -- create <runname>.pdoc\\nposterior decoding of model and\\nfirst db sequence or -id sequence.\\nuse view_pdoc to inspect."
    dump_match_probs: "If 1, then dump the model match probabilities\\nin a rdb file name <runname>.match-rdb\\n"
    option: ""
    grab_dp: ""
    run_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}