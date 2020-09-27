class: CommandLineTool
id: umis_fasttagcount.cwl
inputs:
- id: in_gene_map
  doc: "A TSV file mapping transcript ids to gene ids. If\nprovided expression will\
    \ be summarised to gene level\n(recommended)."
  type: File
  inputBinding:
    prefix: --genemap
- id: in_positional
  doc: "--minevidence FLOAT\n--cb_histogram TEXT  A TSV file with CBs and a count.\
    \ If the counts are are\nthe number of reads at a CB, the cb_cutoff option can\n\
    be used to filter out CBs to be counted.\n--cb_cutoff TEXT     Number of counts\
    \ to filter cellular barcodes. Set to\n'auto' to calculate a cutoff automatically.\n\
    --subsample INTEGER\n--parse_tags         Parse BAM tags in stead of read name.\
    \ In this mode the\noptional tags UM and CR will be used for UMI and cell\nbarcode,\
    \ respetively.\n--gene_tags          Use the optional TX and GX tags in the BAM\
    \ file to read\ngene mapping information in stead of the mapping target\nnane.\
    \ Useful if e.g. reads have been mapped to genome\nin stead of transcriptome.\n\
    --umi_matrix TEXT    Save a sparse matrix of counts without UMI deduping to\n\
    this file.\n--help               Show this message and exit.\n"
  type: boolean
  inputBinding:
    prefix: --positional
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
- fasttagcount
