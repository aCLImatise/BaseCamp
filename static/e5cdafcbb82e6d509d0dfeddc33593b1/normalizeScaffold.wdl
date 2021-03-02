version 1.0

task NormalizeScaffold {
  input {
    Boolean? display_compatible_version
    File? just_normalize_eids
    File? just_normalize_iids
    String? just_normalize_eid
    String? just_normalize_iid
    File bank_path
  }
  command <<<
    normalizeScaffold \
      ~{bank_path} \
      ~{if (display_compatible_version) then "-v" else ""} \
      ~{if defined(just_normalize_eids) then ("-E " +  '"' + just_normalize_eids + '"') else ""} \
      ~{if defined(just_normalize_iids) then ("-I " +  '"' + just_normalize_iids + '"') else ""} \
      ~{if defined(just_normalize_eid) then ("-e " +  '"' + just_normalize_eid + '"') else ""} \
      ~{if defined(just_normalize_iid) then ("-i " +  '"' + just_normalize_iid + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    display_compatible_version: "Display the compatible bank version"
    just_normalize_eids: "Just normalize the scaffolds eids listed in file"
    just_normalize_iids: "Just normalize the scaffolds iids listed in file"
    just_normalize_eid: "Just normalize the specified scaffold eid"
    just_normalize_iid: "Just normalize the specified scaffold iid"
    bank_path: ""
  }
  output {
    File out_stdout = stdout()
  }
}