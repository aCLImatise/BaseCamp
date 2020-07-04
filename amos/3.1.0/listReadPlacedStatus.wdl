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
  }
  command <<<
    listReadPlacedStatus \
      ~{list_read_placed_status} \
      ~{true="-s" false="" disregard_bank_locks} \
      ~{true="-v" false="" display_compatible_version} \
      ~{true="-S" false="" just_list_singleton} \
      ~{true="-D" false="" just_list_duplicate} \
      ~{true="-P" false="" just_list_placed} \
      ~{true="-E" false="" just_list_read_eids} \
      ~{true="-I" false="" just_list_read_iids}
  >>>
  parameter_meta {
    disregard_bank_locks: "Disregard bank locks and write permissions (spy mode)"
    display_compatible_version: "Display the compatible bank version"
    just_list_singleton: "Just list singleton reads"
    just_list_duplicate: "Just list duplicate reads"
    just_list_placed: "Just list placed reads"
    just_list_read_eids: "Just list read EIDs"
    just_list_read_iids: "Just list read IIDs"
    list_read_placed_status: "[options]  -b <bank path>"
  }
}