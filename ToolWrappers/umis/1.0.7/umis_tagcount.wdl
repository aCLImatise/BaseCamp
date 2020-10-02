version 1.0

task UmisTagcount {
  input {
    File? gene_map
    Float? output_evidence_table
    String sam
    String out
  }
  command <<<
    umis tagcount \
      ~{sam} \
      ~{out} \
      ~{if defined(gene_map) then ("--genemap " +  '"' + gene_map + '"') else ""} \
      ~{if defined(output_evidence_table) then ("--output_evidence_table " +  '"' + output_evidence_table + '"') else ""}
  >>>
  parameter_meta {
    gene_map: "A TSV file mapping transcript ids to gene ids.\\nIf provided expression will be summarised to\\ngene level (recommended)."
    output_evidence_table: "--positional\\n--minevidence FLOAT\\n--cb_histogram TEXT           A TSV file with CBs and a count. If the counts\\nare are the number of reads at a CB, the\\ncb_cutoff option can be used to filter out CBs\\nto be counted.\\n--cb_cutoff TEXT              Number of counts to filter cellular barcodes.\\nSet to 'auto' to calculate a cutoff\\nautomatically.\\n--no_scale_evidence\\n--subsample INTEGER\\n--sparse                      Ouput counts in MatrixMarket format.\\n--parse_tags                  Parse BAM tags in stead of read name. In this\\nmode the optional tags UM and CR will be used\\nfor UMI and cell barcode, respetively.\\n--gene_tags                   Use the optional TX and GX tags in the BAM\\nfile to read gene mapping information in stead\\nof the mapping target nane. Useful if e.g.\\nreads have been mapped to genome in stead of\\ntranscriptome.\\n--help                        Show this message and exit.\\n"
    sam: ""
    out: ""
  }
  output {
    File out_stdout = stdout()
  }
}