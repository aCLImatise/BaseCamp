version 1.0

task OvStoreBuild {
  input {
    String? path_overlap_store
    String? path_sequence_store
    String? path_ovstoreconfig_file
    String? filter_overlaps_e
    Boolean? be_overly_verbose
    String? opts
  }
  command <<<
    ovStoreBuild \
      ~{opts} \
      ~{if defined(path_overlap_store) then ("-O " +  '"' + path_overlap_store + '"') else ""} \
      ~{if defined(path_sequence_store) then ("-S " +  '"' + path_sequence_store + '"') else ""} \
      ~{if defined(path_ovstoreconfig_file) then ("-C " +  '"' + path_ovstoreconfig_file + '"') else ""} \
      ~{if defined(filter_overlaps_e) then ("-e " +  '"' + filter_overlaps_e + '"') else ""} \
      ~{true="-v" false="" be_overly_verbose}
  >>>
  parameter_meta {
    path_overlap_store: "path to overlap store to create"
    path_sequence_store: "path to a sequence store"
    path_ovstoreconfig_file: "path to ovStoreConfig configuration file"
    filter_overlaps_e: "filter overlaps above e fraction error"
    be_overly_verbose: "be overly verbose"
    opts: ""
  }
}