version 1.0

task GenerateCorrectionLayouts {
  input {
    String? mandatory_path_to
    String? mandatory_path_ovlstore
    String? scores
    String? output_layouts_store
    Boolean? write_extremely_verbose
    Boolean? dump_data_used
    String? process_reads_starting
    String? process_reads_including
    Int? el
    String? ee
    String? ec
  }
  command <<<
    generateCorrectionLayouts \
      ~{if defined(mandatory_path_to) then ("-S " +  '"' + mandatory_path_to + '"') else ""} \
      ~{if defined(mandatory_path_ovlstore) then ("-O " +  '"' + mandatory_path_ovlstore + '"') else ""} \
      ~{if defined(scores) then ("-scores " +  '"' + scores + '"') else ""} \
      ~{if defined(output_layouts_store) then ("-C " +  '"' + output_layouts_store + '"') else ""} \
      ~{true="-V" false="" write_extremely_verbose} \
      ~{true="-D" false="" dump_data_used} \
      ~{if defined(process_reads_starting) then ("-b " +  '"' + process_reads_starting + '"') else ""} \
      ~{if defined(process_reads_including) then ("-e " +  '"' + process_reads_including + '"') else ""} \
      ~{if defined(el) then ("-eL " +  '"' + el + '"') else ""} \
      ~{if defined(ee) then ("-eE " +  '"' + ee + '"') else ""} \
      ~{if defined(ec) then ("-eC " +  '"' + ec + '"') else ""}
  >>>
  parameter_meta {
    mandatory_path_to: "mandatory path to seqStore"
    mandatory_path_ovlstore: "mandatory path to ovlStore"
    scores: "overlap score thresholds (from filterCorrectionOverlaps) if not supplied, will be estimated from ovlStore"
    output_layouts_store: "output layouts to store 'corStore'"
    write_extremely_verbose: "write extremely verbose logging to 'corStore.log'"
    dump_data_used: "dump the data used to estimate overlap scores to 'corStore.scores'"
    process_reads_starting: "process reads starting at bgnID"
    process_reads_including: "process reads up to but not including endID"
    el: "minimum length of evidence overlaps"
    ee: "maximum error rate of evidence overlaps"
    ec: "maximum coverage of evidence reads to emit"
  }
}