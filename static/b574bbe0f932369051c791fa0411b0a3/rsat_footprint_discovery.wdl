version 1.0

task RsatFootprintdiscovery {
  input {
    Int? lth
    String? return
    String? bg_model
    Boolean? bg_file
    Boolean? unique_species
    String mversionm
    String sequences
    String org_escherichiacoligcfasmv_taxon
    String moutput_formatm
    String feature_map
    String get_orthologs
    String footprint_scan
    String soon_dot
    String entered_calling_argument
    String fields_dot
    String organisms_dot
    String program_dot
    String incomplete_dot
    String distance_dot
  }
  command <<<
    rsat footprint_discovery \
      ~{mversionm} \
      ~{sequences} \
      ~{org_escherichiacoligcfasmv_taxon} \
      ~{moutput_formatm} \
      ~{feature_map} \
      ~{get_orthologs} \
      ~{footprint_scan} \
      ~{soon_dot} \
      ~{entered_calling_argument} \
      ~{fields_dot} \
      ~{organisms_dot} \
      ~{program_dot} \
      ~{incomplete_dot} \
      ~{distance_dot} \
      ~{if defined(lth) then ("-lth " +  '"' + lth + '"') else ""} \
      ~{if defined(return) then ("-return " +  '"' + return + '"') else ""} \
      ~{if defined(bg_model) then ("-bg_model " +  '"' + bg_model + '"') else ""} \
      ~{if (bg_file) then "-bgfile" else ""} \
      ~{if (unique_species) then "-unique_species" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    lth: "1 -lth occ_sig 0 -uth rank 50 \\"
    return: ",proba,rank -filter  \\"
    bg_model: "\\"
    bg_file: ", see below)"
    unique_species: ", but at the level of the genus. At this level we"
    mversionm: "[1mVERSION[0m"
    sequences: "Motif discovery"
    org_escherichiacoligcfasmv_taxon: "-v 1 -org Escherichia_coli_GCF_000005845.2_ASM584v2 -taxon Enterobacteriaceae \\"
    moutput_formatm: "[1mOUTPUT FORMAT[0m"
    feature_map: "NOTE : 'ortho' is replaced by 'leaders' in the filename prefix with"
    get_orthologs: "dyad-analysis"
    footprint_scan: "[1mWISH LIST[0m"
    soon_dot: "[1m-taxa[0m\\nSpecify a file containing a list of taxa, each of which will be\\nanalyzed separately. The results are stored in a separate folder for\\neach taxon. The folder name is defined automatically."
    entered_calling_argument: "Multiple-fields can be entered either by calling this argument"
    fields_dot: "[1m-bg_model taxfreq|org_list|monads|file[0m"
    organisms_dot: "The file format is one organisms per line, the comment char is \\\";\\\""
    program_dot: "File format: Tab delimited file with three columns.\\nID of the query gene (in the query organism)\\nID of the reference gene\\nID of the reference organism"
    incomplete_dot: "[1m-sep_genes[0m"
    distance_dot: "[1m-dist_thr value[0m"
  }
  output {
    File out_stdout = stdout()
  }
}