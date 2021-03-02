version 1.0

task ListGCContent {
  input {
    Boolean? disregard_bank_locks
    Boolean? display_compatible_version
    Boolean? use_eids_instead
    Boolean? ignore_clear_range
    Boolean? dump_contigs_instead
    File? dump_just_eids
    File? dump_just_iids
    String list_gc_content
  }
  command <<<
    listGCContent \
      ~{list_gc_content} \
      ~{if (disregard_bank_locks) then "-s" else ""} \
      ~{if (display_compatible_version) then "-v" else ""} \
      ~{if (use_eids_instead) then "-e" else ""} \
      ~{if (ignore_clear_range) then "-r" else ""} \
      ~{if (dump_contigs_instead) then "-C" else ""} \
      ~{if defined(dump_just_eids) then ("-E " +  '"' + dump_just_eids + '"') else ""} \
      ~{if defined(dump_just_iids) then ("-I " +  '"' + dump_just_iids + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    disregard_bank_locks: "Disregard bank locks and write permissions (spy mode)"
    display_compatible_version: "Display the compatible bank version"
    use_eids_instead: "Use EIDs instead of IIDs for identifiers"
    ignore_clear_range: "Ignore clear range and dump entire sequence"
    dump_contigs_instead: "Dump Contigs instead of reads"
    dump_just_eids: "Dump just the eids listed in file"
    dump_just_iids: "Dump just the iids listed in file"
    list_gc_content: "[options]  -b <bank path>"
  }
  output {
    File out_stdout = stdout()
  }
}