class: CommandLineTool
id: dnase_wig_tracks.py_regions.cwl
inputs:
- id: regions
  doc: BED file of the regions you want to write wig tracks for
  type: string
  inputBinding:
    position: 0
- id: reads
  doc: The BAM file containing the read data
  type: string
  inputBinding:
    position: 1
- id: fw_output
  doc: Path to write the forward reads wig track to
  type: string
  inputBinding:
    position: 2
- id: rev_output
  doc: Path to write the reverse reads wig track to
  type: string
  inputBinding:
    position: 3
- id: real
  doc: 'Report cuts on the negative strand as positive numbers instead of negative
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --real
- id: a
  doc: 'ATAC-seq mode (default: False)'
  type: boolean
  inputBinding:
    prefix: -A
outputs: []
cwlVersion: v1.1
baseCommand:
- dnase_wig_tracks.py
- regions
