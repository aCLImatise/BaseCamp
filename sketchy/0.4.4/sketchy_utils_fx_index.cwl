class: CommandLineTool
id: sketchy_utils_fx_index.cwl
inputs:
- id: fast_x
  doc: Path to Fast{a,q} input file to index reads from headers [required]
  type: File
  inputBinding:
    prefix: --fastx
- id: sort_by
  doc: 'Sort read index by column: runid, sampleid, barcode, name, start_time [start_time]'
  type: string
  inputBinding:
    prefix: --sort_by
- id: output
  doc: Output sorted read index to tab-delimited file [read_index.tsv]
  type: File
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- sketchy
- utils
- fx-index
