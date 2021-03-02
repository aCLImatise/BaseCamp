version 1.0

task ListReadPlacedStatus {
  input {
    Boolean? disregard_bank_locks
    Boolean? display_compatible_version
    Boolean? just_list_singleton
    Boolean? just_list_duplicate
    Boolean? just_list_placed
    Boolean? just_list_read_eids
    Boolean? just_list_read_iids
    String list_read_placed_status
    String iid
  }
  command <<<
    listReadPlacedStatus \
      ~{list_read_placed_status} \
      ~{iid} \
      ~{if (disregard_bank_locks) then "-s" else ""} \
      ~{if (display_compatible_version) then "-v" else ""} \
      ~{if (just_list_singleton) then "-S" else ""} \
      ~{if (just_list_duplicate) then "-D" else ""} \
      ~{if (just_list_placed) then "-P" else ""} \
      ~{if (just_list_read_eids) then "-E" else ""} \
      ~{if (just_list_read_iids) then "-I" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    disregard_bank_locks: "Disregard bank locks and write permissions (spy mode)"
    display_compatible_version: "Display the compatible bank version"
    just_list_singleton: "Just list singleton reads"
    just_list_duplicate: "Just list duplicate reads"
    just_list_placed: "Just list placed reads"
    just_list_read_eids: "Just list read EIDs"
    just_list_read_iids: "Just list read IIDs"
    list_read_placed_status: "[options]  -b <bank path>"
    iid: "eid  code  numcontigs  contig iid list"
  }
  output {
    File out_stdout = stdout()
  }
}