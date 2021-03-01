class: CommandLineTool
id: umis_tagcount.cwl
inputs:
- id: in_gene_map
  doc: "A TSV file mapping transcript ids to gene ids.\nIf provided expression will\
    \ be summarised to\ngene level (recommended)."
  type: File?
  inputBinding:
    prefix: --genemap
- id: in_output_evidence_table
  doc: "A TSV file with CBs and a count. If the counts\nare are the number of reads\
    \ at a CB, the\ncb_cutoff option can be used to filter out CBs\nto be counted."
  type: long?
  inputBinding:
    prefix: --output_evidence_table
- id: in_cb_cut_off
  doc: "Number of counts to filter cellular barcodes.\nSet to 'auto' to calculate\
    \ a cutoff\nautomatically."
  type: long?
  inputBinding:
    prefix: --cb_cutoff
- id: in_no_scale_evidence
  doc: Ouput counts in MatrixMarket format.
  type: long?
  inputBinding:
    prefix: --no_scale_evidence
- id: in_parse_tags
  doc: "Parse BAM tags in stead of read name. In this\nmode the optional tags UM and\
    \ CR will be used\nfor UMI and cell barcode, respetively."
  type: boolean?
  inputBinding:
    prefix: --parse_tags
- id: in_gene_tags
  doc: "Use the optional TX and GX tags in the BAM\nfile to read gene mapping information\
    \ in stead\nof the mapping target nane. Useful if e.g.\nreads have been mapped\
    \ to genome in stead of\ntranscriptome."
  type: boolean?
  inputBinding:
    prefix: --gene_tags
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
hints: []
cwlVersion: v1.1
baseCommand:
- umis
- tagcount
