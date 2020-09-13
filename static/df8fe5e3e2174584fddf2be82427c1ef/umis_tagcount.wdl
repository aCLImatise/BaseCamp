version 1.0

task UmisTagcount {
  input {
    File? gene_map
    String? output_evidence_table
    Boolean? positional
    Float? min_evidence
    Int? cb_histogram
    Int? cb_cut_off
    Boolean? no_scale_evidence
    Int? subsample
    Boolean? sparse
    Boolean? parse_tags
    Boolean? gene_tags
    String sam
    String out
  }
  command <<<
    umis tagcount \
      ~{sam} \
      ~{out} \
      ~{if defined(gene_map) then ("--genemap " +  '"' + gene_map + '"') else ""} \
      ~{if defined(output_evidence_table) then ("--output_evidence_table " +  '"' + output_evidence_table + '"') else ""} \
      ~{if (positional) then "--positional" else ""} \
      ~{if defined(min_evidence) then ("--minevidence " +  '"' + min_evidence + '"') else ""} \
      ~{if defined(cb_histogram) then ("--cb_histogram " +  '"' + cb_histogram + '"') else ""} \
      ~{if defined(cb_cut_off) then ("--cb_cutoff " +  '"' + cb_cut_off + '"') else ""} \
      ~{if (no_scale_evidence) then "--no_scale_evidence" else ""} \
      ~{if defined(subsample) then ("--subsample " +  '"' + subsample + '"') else ""} \
      ~{if (sparse) then "--sparse" else ""} \
      ~{if (parse_tags) then "--parse_tags" else ""} \
      ~{if (gene_tags) then "--gene_tags" else ""}
  >>>
  parameter_meta {
    gene_map: "A TSV file mapping transcript ids to gene ids.\\nIf provided expression will be summarised to\\ngene level (recommended)."
    output_evidence_table: ""
    positional: ""
    min_evidence: ""
    cb_histogram: "A TSV file with CBs and a count. If the counts\\nare are the number of reads at a CB, the\\ncb_cutoff option can be used to filter out CBs\\nto be counted."
    cb_cut_off: "Number of counts to filter cellular barcodes.\\nSet to 'auto' to calculate a cutoff\\nautomatically."
    no_scale_evidence: ""
    subsample: ""
    sparse: "Ouput counts in MatrixMarket format."
    parse_tags: "Parse BAM tags in stead of read name. In this\\nmode the optional tags UM and CR will be used\\nfor UMI and cell barcode, respetively."
    gene_tags: "Use the optional TX and GX tags in the BAM\\nfile to read gene mapping information in stead\\nof the mapping target nane. Useful if e.g.\\nreads have been mapped to genome in stead of\\ntranscriptome."
    sam: ""
    out: ""
  }
  output {
    File out_stdout = stdout()
  }
}