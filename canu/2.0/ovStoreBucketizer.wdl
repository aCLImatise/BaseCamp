version 1.0

task OvStoreBucketizer {
  input {
    File? path_overlap_store
    File? path_sequence_store
    File? path_ovstoreconfig_file
    Int? bucket_create_n
    String? filter_overlaps_e
    Boolean? force_overwriting_data
    Boolean? be_overly_verbose
    String? opts
  }
  command <<<
    ovStoreBucketizer \
      ~{opts} \
      ~{if defined(path_overlap_store) then ("-O " +  '"' + path_overlap_store + '"') else ""} \
      ~{if defined(path_sequence_store) then ("-S " +  '"' + path_sequence_store + '"') else ""} \
      ~{if defined(path_ovstoreconfig_file) then ("-C " +  '"' + path_ovstoreconfig_file + '"') else ""} \
      ~{if defined(bucket_create_n) then ("-b " +  '"' + bucket_create_n + '"') else ""} \
      ~{if defined(filter_overlaps_e) then ("-e " +  '"' + filter_overlaps_e + '"') else ""} \
      ~{if (force_overwriting_data) then "-f" else ""} \
      ~{if (be_overly_verbose) then "-v" else ""}
  >>>
  parameter_meta {
    path_overlap_store: "path to overlap store to create"
    path_sequence_store: "path to a sequence store"
    path_ovstoreconfig_file: "path to ovStoreConfig configuration file"
    bucket_create_n: "bucket to create (1 ... N)"
    filter_overlaps_e: "filter overlaps above e fraction error"
    force_overwriting_data: "force overwriting existing data"
    be_overly_verbose: "be overly verbose"
    opts: ""
  }
  output {
    File out_stdout = stdout()
  }
}