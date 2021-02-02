version 1.0

task RevScaffold {
  input {
    Boolean? display_compatible_version
    String? flip_scaffold_eid
    String? flip_scaffold_iid
    File? flip_scaffolds_eids
    File? flip_scaffolds_iids
    File bank_path
  }
  command <<<
    revScaffold \
      ~{bank_path} \
      ~{if (display_compatible_version) then "-v" else ""} \
      ~{if defined(flip_scaffold_eid) then ("-e " +  '"' + flip_scaffold_eid + '"') else ""} \
      ~{if defined(flip_scaffold_iid) then ("-i " +  '"' + flip_scaffold_iid + '"') else ""} \
      ~{if defined(flip_scaffolds_eids) then ("-E " +  '"' + flip_scaffolds_eids + '"') else ""} \
      ~{if defined(flip_scaffolds_iids) then ("-I " +  '"' + flip_scaffolds_iids + '"') else ""}
  >>>
  parameter_meta {
    display_compatible_version: "Display the compatible bank version"
    flip_scaffold_eid: "Flip scaffold eid"
    flip_scaffold_iid: "Flip scaffold iid"
    flip_scaffolds_eids: "Flip the scaffolds eids listed in file"
    flip_scaffolds_iids: "Flip the scaffolds iids listed in file"
    bank_path: ""
  }
  output {
    File out_stdout = stdout()
  }
}