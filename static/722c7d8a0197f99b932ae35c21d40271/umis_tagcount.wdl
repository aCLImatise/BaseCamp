version 1.0

task UmisTagcount {
  input {
    File? gene_map
    Int? output_evidence_table
    Int? cb_cut_off
    Int? no_scale_evidence
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
      ~{if defined(cb_cut_off) then ("--cb_cutoff " +  '"' + cb_cut_off + '"') else ""} \
      ~{if defined(no_scale_evidence) then ("--no_scale_evidence " +  '"' + no_scale_evidence + '"') else ""} \
      ~{if (parse_tags) then "--parse_tags" else ""} \
      ~{if (gene_tags) then "--gene_tags" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gene_map: "A TSV file mapping transcript ids to gene ids.\\nIf provided expression will be summarised to\\ngene level (recommended)."
    output_evidence_table: "A TSV file with CBs and a count. If the counts\\nare are the number of reads at a CB, the\\ncb_cutoff option can be used to filter out CBs\\nto be counted."
    cb_cut_off: "Number of counts to filter cellular barcodes.\\nSet to 'auto' to calculate a cutoff\\nautomatically."
    no_scale_evidence: "Ouput counts in MatrixMarket format."
    parse_tags: "Parse BAM tags in stead of read name. In this\\nmode the optional tags UM and CR will be used\\nfor UMI and cell barcode, respetively."
    gene_tags: "Use the optional TX and GX tags in the BAM\\nfile to read gene mapping information in stead\\nof the mapping target nane. Useful if e.g.\\nreads have been mapped to genome in stead of\\ntranscriptome."
    sam: ""
    out: ""
  }
  output {
    File out_stdout = stdout()
  }
}