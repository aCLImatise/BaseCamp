version 1.0

task OverlapStoreBuild {
  input {
    File? path_store_create
    File? path_gkpstore_assembly
    String? use_files_store
    String? use_mb_memory
    String? plc
    Boolean? obt
    Boolean? dup
    String? filter_overlaps_e
    File? read_input_filenames
    Int? big
    String? opts
  }
  command <<<
    overlapStoreBuild \
      ~{opts} \
      ~{if defined(path_store_create) then ("-o " +  '"' + path_store_create + '"') else ""} \
      ~{if defined(path_gkpstore_assembly) then ("-g " +  '"' + path_gkpstore_assembly + '"') else ""} \
      ~{if defined(use_files_store) then ("-F " +  '"' + use_files_store + '"') else ""} \
      ~{if defined(use_mb_memory) then ("-M " +  '"' + use_mb_memory + '"') else ""} \
      ~{if defined(plc) then ("-plc " +  '"' + plc + '"') else ""} \
      ~{if (obt) then "-obt" else ""} \
      ~{if (dup) then "-dup" else ""} \
      ~{if defined(filter_overlaps_e) then ("-e " +  '"' + filter_overlaps_e + '"') else ""} \
      ~{if defined(read_input_filenames) then ("-L " +  '"' + read_input_filenames + '"') else ""} \
      ~{if defined(big) then ("-big " +  '"' + big + '"') else ""}
  >>>
  parameter_meta {
    path_store_create: "path to store to create"
    path_gkpstore_assembly: "path to gkpStore for this assembly"
    use_files_store: "use up to 'f' files for store creation"
    use_mb_memory: "use up to 'm' MB memory for store creation"
    plc: "type of filtering for PLC fragments -- NOT SUPPORTED"
    obt: "filter overlaps for OBT"
    dup: "filter overlaps for OBT/dedupe"
    filter_overlaps_e: "filter overlaps above e fraction error"
    read_input_filenames: "read input filenames from 'flieList'"
    big: "handle a large number of overlaps in the last library\\niid is the first read iid in the last library, from\\n'gatekeeper -dumpinfo *gkpStore'"
    opts: ""
  }
  output {
    File out_stdout = stdout()
  }
}