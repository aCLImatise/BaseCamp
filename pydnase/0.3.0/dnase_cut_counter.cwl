class: CommandLineTool
id: dnase_cut_counter.py_regions.cwl
inputs:
- id: regions
  doc: BED file
  type: string
  inputBinding:
    position: 0
- id: reads
  doc: The BAM file containing the DNase-seq data
  type: string
  inputBinding:
    position: 1
- id: output
  doc: filename to write the output to
  type: string
  inputBinding:
    position: 2
- id: a
  doc: 'ATAC-seq mode (default: False)'
  type: boolean
  inputBinding:
    prefix: -A
outputs: []
cwlVersion: v1.1
baseCommand:
- dnase_cut_counter.py
- regions
