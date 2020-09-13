version 1.0

task SplitUnitigs {
  input {
    Boolean? mandatory_path_gkpstore
    Boolean? mandatory_path_tigstore
    String? process_only_unitig
    Int? not_split_occurs
    Boolean? not_recompute_sequence
    Boolean? not_modify_tigstore
    Boolean? increase_consensus_verbosity
    Boolean? generate_picture_evidence
    String version
  }
  command <<<
    splitUnitigs \
      ~{version} \
      ~{if (mandatory_path_gkpstore) then "-g" else ""} \
      ~{if (mandatory_path_tigstore) then "-t" else ""} \
      ~{if defined(process_only_unitig) then ("-u " +  '"' + process_only_unitig + '"') else ""} \
      ~{if defined(not_split_occurs) then ("-s " +  '"' + not_split_occurs + '"') else ""} \
      ~{if (not_recompute_sequence) then "-N" else ""} \
      ~{if (not_modify_tigstore) then "-n" else ""} \
      ~{if (increase_consensus_verbosity) then "-V" else ""} \
      ~{if (generate_picture_evidence) then "-E" else ""}
  >>>
  parameter_meta {
    mandatory_path_gkpstore: "Mandatory path to a gkpStore."
    mandatory_path_tigstore: "Mandatory path to a tigStore (can exist or not)."
    process_only_unitig: "Process only unitig IID i"
    not_split_occurs: "Do NOT split if the break occurs in the terminal S non-contained reads\\nThe default 0 disables this feature"
    not_recompute_sequence: "Do NOT recompute consensus sequence, only generate new split unitigs"
    not_modify_tigstore: "Do NOT modify the tigStore"
    increase_consensus_verbosity: "Increase consensus verbosity"
    generate_picture_evidence: "Generate a picture of the evidence for each unitig"
    version: ""
  }
  output {
    File out_stdout = stdout()
  }
}