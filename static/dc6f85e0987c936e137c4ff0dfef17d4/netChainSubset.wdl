version 1.0

task NetChainSubset {
  input {
    File? gap_out
    File? type
    Boolean? split_on_insert
    Boolean? whole_chains
    Boolean? skip_missing
    String in_dotnet
    String in_dot_chain
  }
  command <<<
    netChainSubset \
      ~{in_dotnet} \
      ~{in_dot_chain} \
      ~{if defined(gap_out) then ("-gapOut " +  '"' + gap_out + '"') else ""} \
      ~{if defined(type) then ("-type " +  '"' + type + '"') else ""} \
      ~{if (split_on_insert) then "-splitOnInsert" else ""} \
      ~{if (whole_chains) then "-wholeChains" else ""} \
      ~{if (skip_missing) then "-skipMissing" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gap_out: "- Output gap sizes to file"
    type: "- Restrict output to particular type in net file"
    split_on_insert: "- Split chain when get an insertion of another chain"
    whole_chains: "- Write entire chain references by net, don't split\\nwhen a high-level net is encoundered.  This is useful when nets\\nhave been filtered."
    skip_missing: "- skip chains that are not found instead of generating\\nan error.  Useful if chains have been filtered.\\n"
    in_dotnet: ""
    in_dot_chain: ""
  }
  output {
    File out_stdout = stdout()
    File out_gap_out = "${in_gap_out}"
    File out_type = "${in_type}"
  }
}