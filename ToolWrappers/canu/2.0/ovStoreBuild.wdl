version 1.0

task OvStoreBuild {
  input {
    File? path_overlap_store
    File? path_sequence_store
    File? path_ovstoreconfig_configuration
    String? filter_overlaps_e
    Boolean? be_overly_verbose
    String? opts
  }
  command <<<
    ovStoreBuild \
      ~{opts} \
      ~{if defined(path_overlap_store) then ("-O " +  '"' + path_overlap_store + '"') else ""} \
      ~{if defined(path_sequence_store) then ("-S " +  '"' + path_sequence_store + '"') else ""} \
      ~{if defined(path_ovstoreconfig_configuration) then ("-C " +  '"' + path_ovstoreconfig_configuration + '"') else ""} \
      ~{if defined(filter_overlaps_e) then ("-e " +  '"' + filter_overlaps_e + '"') else ""} \
      ~{if (be_overly_verbose) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    path_overlap_store: "path to overlap store to create"
    path_sequence_store: "path to a sequence store"
    path_ovstoreconfig_configuration: "path to ovStoreConfig configuration file"
    filter_overlaps_e: "filter overlaps above e fraction error"
    be_overly_verbose: "be overly verbose"
    opts: ""
  }
  output {
    File out_stdout = stdout()
  }
}