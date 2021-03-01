class: CommandLineTool
id: umis_fasttagcount.cwl
inputs:
- id: in_gene_map
  doc: "A TSV file mapping transcript ids to gene ids. If\nprovided expression will\
    \ be summarised to gene level\n(recommended)."
  type: File?
  inputBinding:
    prefix: --genemap
- id: in_cb_histogram
  doc: "A TSV file with CBs and a count. If the counts are are\nthe number of reads\
    \ at a CB, the cb_cutoff option can\nbe used to filter out CBs to be counted."
  type: double?
  inputBinding:
    prefix: --cb_histogram
- id: in_cb_cut_off
  doc: "Number of counts to filter cellular barcodes. Set to\n'auto' to calculate\
    \ a cutoff automatically."
  type: long?
  inputBinding:
    prefix: --cb_cutoff
- id: in_parse_tags
  doc: "Parse BAM tags in stead of read name. In this mode the\noptional tags UM and\
    \ CR will be used for UMI and cell\nbarcode, respetively."
  type: long?
  inputBinding:
    prefix: --parse_tags
- id: in_gene_tags
  doc: "Use the optional TX and GX tags in the BAM file to read\ngene mapping information\
    \ in stead of the mapping target\nnane. Useful if e.g. reads have been mapped\
    \ to genome\nin stead of transcriptome."
  type: boolean?
  inputBinding:
    prefix: --gene_tags
- id: in_umi_matrix
  doc: "Save a sparse matrix of counts without UMI deduping to\nthis file."
  type: File?
  inputBinding:
    prefix: --umi_matrix
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
- fasttagcount
