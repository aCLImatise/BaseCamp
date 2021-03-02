version 1.0

task GenerateCorrectionLayouts {
  input {
    File? mandatory_path_seqstore
    File? mandatory_path_ovlstore
    String? scores
    String? output_layouts_store
    Boolean? write_verbose_logging
    Boolean? dump_data_used
    String? process_reads_starting
    String? process_reads_including
    Int? el
    String? ee
    String? ec
  }
  command <<<
    generateCorrectionLayouts \
      ~{if defined(mandatory_path_seqstore) then ("-S " +  '"' + mandatory_path_seqstore + '"') else ""} \
      ~{if defined(mandatory_path_ovlstore) then ("-O " +  '"' + mandatory_path_ovlstore + '"') else ""} \
      ~{if defined(scores) then ("-scores " +  '"' + scores + '"') else ""} \
      ~{if defined(output_layouts_store) then ("-C " +  '"' + output_layouts_store + '"') else ""} \
      ~{if (write_verbose_logging) then "-V" else ""} \
      ~{if (dump_data_used) then "-D" else ""} \
      ~{if defined(process_reads_starting) then ("-b " +  '"' + process_reads_starting + '"') else ""} \
      ~{if defined(process_reads_including) then ("-e " +  '"' + process_reads_including + '"') else ""} \
      ~{if defined(el) then ("-eL " +  '"' + el + '"') else ""} \
      ~{if defined(ee) then ("-eE " +  '"' + ee + '"') else ""} \
      ~{if defined(ec) then ("-eC " +  '"' + ec + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mandatory_path_seqstore: "mandatory path to seqStore"
    mandatory_path_ovlstore: "mandatory path to ovlStore"
    scores: "overlap score thresholds (from filterCorrectionOverlaps)\\nif not supplied, will be estimated from ovlStore"
    output_layouts_store: "output layouts to store 'corStore'"
    write_verbose_logging: "write extremely verbose logging to 'corStore.log'"
    dump_data_used: "dump the data used to estimate overlap scores to 'corStore.scores'"
    process_reads_starting: "process reads starting at bgnID"
    process_reads_including: "process reads up to but not including endID"
    el: "minimum length of evidence overlaps"
    ee: "maximum error rate of evidence overlaps"
    ec: "maximum coverage of evidence reads to emit"
  }
  output {
    File out_stdout = stdout()
  }
}