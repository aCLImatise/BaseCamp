class: CommandLineTool
id: igdiscover_errorplot.cwl
inputs:
- id: minimum_group_size
  doc: 'Plot only genes with at least N assigned sequences. Default: 0.1% of assigned
    sequences or 100, whichever is smaller.'
  type: string
  inputBinding:
    prefix: --minimum-group-size
- id: max_j_shm
  doc: Use only rows with J%SHM >= VALUE
  type: string
  inputBinding:
    prefix: --max-j-shm
- id: multi
  doc: Plot individual error frequency histograms (for each V gene) to this PDF file
  type: string
  inputBinding:
    prefix: --multi
- id: boxplot
  doc: Plot a single page with box(en)plots of V SHM for multiple genes
  type: string
  inputBinding:
    prefix: --boxplot
outputs: []
cwlVersion: v1.1
baseCommand:
- igdiscover
- errorplot
