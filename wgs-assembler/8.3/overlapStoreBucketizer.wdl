version 1.0

task OverlapStoreBucketizer {
  input {
    File? path_store_create
    File? path_gkpstore_assembly
    File? input_overlaps
    File? job
    String? use_files_store
    String? plc
    Boolean? obt
    Boolean? dup
    String? filter_overlaps_e
    Boolean? raw
    String? opts
  }
  command <<<
    overlapStoreBucketizer \
      ~{opts} \
      ~{if defined(path_store_create) then ("-c " +  '"' + path_store_create + '"') else ""} \
      ~{if defined(path_gkpstore_assembly) then ("-g " +  '"' + path_gkpstore_assembly + '"') else ""} \
      ~{if defined(input_overlaps) then ("-i " +  '"' + input_overlaps + '"') else ""} \
      ~{if defined(job) then ("-job " +  '"' + job + '"') else ""} \
      ~{if defined(use_files_store) then ("-F " +  '"' + use_files_store + '"') else ""} \
      ~{if defined(plc) then ("-plc " +  '"' + plc + '"') else ""} \
      ~{if (obt) then "-obt" else ""} \
      ~{if (dup) then "-dup" else ""} \
      ~{if defined(filter_overlaps_e) then ("-e " +  '"' + filter_overlaps_e + '"') else ""} \
      ~{if (raw) then "-raw" else ""}
  >>>
  parameter_meta {
    path_store_create: "path to store to create"
    path_gkpstore_assembly: "path to gkpStore for this assembly"
    input_overlaps: "input overlaps"
    job: "index of this overlap input file"
    use_files_store: "use up to 'f' files for store creation"
    plc: "type of filtering for PLC fragments -- NOT SUPPORTED"
    obt: "filter overlaps for OBT"
    dup: "filter overlaps for OBT/dedupe"
    filter_overlaps_e: "filter overlaps above e fraction error"
    raw: "write uncompressed buckets"
    opts: ""
  }
  output {
    File out_stdout = stdout()
  }
}