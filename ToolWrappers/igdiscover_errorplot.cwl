class: CommandLineTool
id: igdiscover_errorplot.cwl
inputs:
- id: in_minimum_group_size
  doc: "Plot only genes with at least N assigned sequences.\nDefault: 0.1% of assigned\
    \ sequences or 100, whichever\nis smaller."
  type: long
  inputBinding:
    prefix: --minimum-group-size
- id: in_max_j_shm
  doc: Use only rows with J%SHM >= VALUE
  type: long
  inputBinding:
    prefix: --max-j-shm
- id: in_multi
  doc: "Plot individual error frequency histograms (for each V\ngene) to this PDF\
    \ file"
  type: File
  inputBinding:
    prefix: --multi
- id: in_boxplot
  doc: "Plot a single page with box(en)plots of V SHM for\nmultiple genes\n"
  type: string
  inputBinding:
    prefix: --boxplot
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- igdiscover
- errorplot
