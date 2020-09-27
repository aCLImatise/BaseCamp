class: CommandLineTool
id: umis_tagcount.cwl
inputs:
- id: in_gene_map
  doc: "A TSV file mapping transcript ids to gene ids.\nIf provided expression will\
    \ be summarised to\ngene level (recommended)."
  type: File
  inputBinding:
    prefix: --genemap
- id: in_output_evidence_table
  doc: "--positional\n--minevidence FLOAT\n--cb_histogram TEXT           A TSV file\
    \ with CBs and a count. If the counts\nare are the number of reads at a CB, the\n\
    cb_cutoff option can be used to filter out CBs\nto be counted.\n--cb_cutoff TEXT\
    \              Number of counts to filter cellular barcodes.\nSet to 'auto' to\
    \ calculate a cutoff\nautomatically.\n--no_scale_evidence\n--subsample INTEGER\n\
    --sparse                      Ouput counts in MatrixMarket format.\n--parse_tags\
    \                  Parse BAM tags in stead of read name. In this\nmode the optional\
    \ tags UM and CR will be used\nfor UMI and cell barcode, respetively.\n--gene_tags\
    \                   Use the optional TX and GX tags in the BAM\nfile to read gene\
    \ mapping information in stead\nof the mapping target nane. Useful if e.g.\nreads\
    \ have been mapped to genome in stead of\ntranscriptome.\n--help             \
    \           Show this message and exit.\n"
  type: double
  inputBinding:
    prefix: --output_evidence_table
- id: in_sam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_out
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- umis
- tagcount
