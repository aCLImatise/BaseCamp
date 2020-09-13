version 1.0

task RsatFootprintdiscovery {
  input {
    Int? lth
    String? return
    String? bg_model
    String? sep_genes
    String? all_genes
    Boolean? bg_file
    Boolean? org_list_dot
    Boolean? unique_species
    String mversionm
    String sequences
    String v_org_enterobacteriaceae
    String moutput_formatm
    String feature_map
    String get_orthologs
    String footprint_scan
    String soon_dot
    String multiplefields_can_entered
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
      ~{v_org_enterobacteriaceae} \
      ~{moutput_formatm} \
      ~{feature_map} \
      ~{get_orthologs} \
      ~{footprint_scan} \
      ~{soon_dot} \
      ~{multiplefields_can_entered} \
      ~{fields_dot} \
      ~{organisms_dot} \
      ~{program_dot} \
      ~{incomplete_dot} \
      ~{distance_dot} \
      ~{if defined(lth) then ("-lth " +  '"' + lth + '"') else ""} \
      ~{if defined(return) then ("-return " +  '"' + return + '"') else ""} \
      ~{if defined(bg_model) then ("-bg_model " +  '"' + bg_model + '"') else ""} \
      ~{if defined(sep_genes) then ("-sep_genes " +  '"' + sep_genes + '"') else ""} \
      ~{if defined(all_genes) then ("-all_genes " +  '"' + all_genes + '"') else ""} \
      ~{if (bg_file) then "-bgfile" else ""} \
      ~{if (org_list_dot) then "-org_list." else ""} \
      ~{if (unique_species) then "-unique_species" else ""}
  >>>
  parameter_meta {
    lth: "1 -lth occ_sig 0 -uth rank 50 \\"
    return: ",proba,rank -filter  \\"
    bg_model: ""
    sep_genes: ""
    all_genes: ""
    bg_file: ", see below)"
    org_list_dot: ""
    unique_species: ", but at the level of the genus. At this level we"
    mversionm: "[1mVERSION[0m"
    sequences: "Motif discovery"
    v_org_enterobacteriaceae: "-v 1 -org Escherichia_coli_GCF_000005845.2_ASM584v2 -taxon Enterobacteriaceae \\"
    moutput_formatm: "[1mOUTPUT FORMAT[0m"
    feature_map: "NOTE : 'ortho' is replaced by 'leaders' in the filename prefix with"
    get_orthologs: "dyad-analysis"
    footprint_scan: "[1mWISH LIST[0m"
    soon_dot: "[1m-taxa[0m\\nSpecify a file containing a list of taxa, each of which will be\\nanalyzed separately. The results are stored in a separate folder for\\neach taxon. The folder name is defined automatically."
    multiplefields_can_entered: "Multiple-fields can be entered either by calling this argument"
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