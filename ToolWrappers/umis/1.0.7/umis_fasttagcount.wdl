version 1.0

task UmisFasttagcount {
  input {
    File? gene_map
    Float? cb_histogram
    Int? cb_cut_off
    Int? parse_tags
    Boolean? gene_tags
    File? umi_matrix
    String sam
    String out
  }
  command <<<
    umis fasttagcount \
      ~{sam} \
      ~{out} \
      ~{if defined(gene_map) then ("--genemap " +  '"' + gene_map + '"') else ""} \
      ~{if defined(cb_histogram) then ("--cb_histogram " +  '"' + cb_histogram + '"') else ""} \
      ~{if defined(cb_cut_off) then ("--cb_cutoff " +  '"' + cb_cut_off + '"') else ""} \
      ~{if defined(parse_tags) then ("--parse_tags " +  '"' + parse_tags + '"') else ""} \
      ~{if (gene_tags) then "--gene_tags" else ""} \
      ~{if defined(umi_matrix) then ("--umi_matrix " +  '"' + umi_matrix + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gene_map: "A TSV file mapping transcript ids to gene ids. If\\nprovided expression will be summarised to gene level\\n(recommended)."
    cb_histogram: "A TSV file with CBs and a count. If the counts are are\\nthe number of reads at a CB, the cb_cutoff option can\\nbe used to filter out CBs to be counted."
    cb_cut_off: "Number of counts to filter cellular barcodes. Set to\\n'auto' to calculate a cutoff automatically."
    parse_tags: "Parse BAM tags in stead of read name. In this mode the\\noptional tags UM and CR will be used for UMI and cell\\nbarcode, respetively."
    gene_tags: "Use the optional TX and GX tags in the BAM file to read\\ngene mapping information in stead of the mapping target\\nnane. Useful if e.g. reads have been mapped to genome\\nin stead of transcriptome."
    umi_matrix: "Save a sparse matrix of counts without UMI deduping to\\nthis file."
    sam: ""
    out: ""
  }
  output {
    File out_stdout = stdout()
  }
}