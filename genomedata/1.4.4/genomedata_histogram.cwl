class: CommandLineTool
id: genomedata_histogram.cwl
inputs:
- id: gd_archive
  doc: genomedata archive
  type: string
  inputBinding:
    position: 0
- id: track_name
  doc: track name
  type: string
  inputBinding:
    position: 1
- id: include_coords
  doc: limit summary to genomic coordinates in FILE
  type: File
  inputBinding:
    prefix: --include-coords
- id: num_bins
  doc: use BINS bins
  type: string
  inputBinding:
    prefix: --num-bins
outputs: []
cwlVersion: v1.1
baseCommand:
- genomedata-histogram
