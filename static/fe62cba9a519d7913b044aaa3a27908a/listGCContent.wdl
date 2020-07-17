version 1.0

task ListGCContent {
  input {
    Boolean? disregard_bank_locks
    Boolean? display_compatible_version
    Boolean? use_eids_iids
    Boolean? ignore_clear_range
    Boolean? dump_contigs_reads
    File? dump_just_eids
    File? dump_just_iids
    String list_gc_content
  }
  command <<<
    listGCContent \
      ~{list_gc_content} \
      ~{true="-s" false="" disregard_bank_locks} \
      ~{true="-v" false="" display_compatible_version} \
      ~{true="-e" false="" use_eids_iids} \
      ~{true="-r" false="" ignore_clear_range} \
      ~{true="-C" false="" dump_contigs_reads} \
      ~{if defined(dump_just_eids) then ("-E " +  '"' + dump_just_eids + '"') else ""} \
      ~{if defined(dump_just_iids) then ("-I " +  '"' + dump_just_iids + '"') else ""}
  >>>
  parameter_meta {
    disregard_bank_locks: "Disregard bank locks and write permissions (spy mode)"
    display_compatible_version: "Display the compatible bank version"
    use_eids_iids: "Use EIDs instead of IIDs for identifiers"
    ignore_clear_range: "Ignore clear range and dump entire sequence"
    dump_contigs_reads: "Dump Contigs instead of reads"
    dump_just_eids: "Dump just the eids listed in file"
    dump_just_iids: "Dump just the iids listed in file"
    list_gc_content: "[options]  -b <bank path>"
  }
}