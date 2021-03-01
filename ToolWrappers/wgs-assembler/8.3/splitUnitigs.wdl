version 1.0

task SplitUnitigs {
  input {
    Boolean? mandatory_path_gkpstore
    Boolean? mandatory_path_tigstore
    String? process_unitig_iid
    Int? split_break_occurs
    Boolean? recompute_consensus_sequence
    Boolean? do_modify_tigstore
    Boolean? increase_consensus_verbosity
    Boolean? generate_picture_evidence
    String version
  }
  command <<<
    splitUnitigs \
      ~{version} \
      ~{if (mandatory_path_gkpstore) then "-g" else ""} \
      ~{if (mandatory_path_tigstore) then "-t" else ""} \
      ~{if defined(process_unitig_iid) then ("-u " +  '"' + process_unitig_iid + '"') else ""} \
      ~{if defined(split_break_occurs) then ("-s " +  '"' + split_break_occurs + '"') else ""} \
      ~{if (recompute_consensus_sequence) then "-N" else ""} \
      ~{if (do_modify_tigstore) then "-n" else ""} \
      ~{if (increase_consensus_verbosity) then "-V" else ""} \
      ~{if (generate_picture_evidence) then "-E" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mandatory_path_gkpstore: "Mandatory path to a gkpStore."
    mandatory_path_tigstore: "Mandatory path to a tigStore (can exist or not)."
    process_unitig_iid: "Process only unitig IID i"
    split_break_occurs: "Do NOT split if the break occurs in the terminal S non-contained reads\\nThe default 0 disables this feature"
    recompute_consensus_sequence: "Do NOT recompute consensus sequence, only generate new split unitigs"
    do_modify_tigstore: "Do NOT modify the tigStore"
    increase_consensus_verbosity: "Increase consensus verbosity"
    generate_picture_evidence: "Generate a picture of the evidence for each unitig"
    version: ""
  }
  output {
    File out_stdout = stdout()
  }
}