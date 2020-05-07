class: CommandLineTool
id: dnase_to_JSON.py_regions.cwl
inputs:
- id: regions
  doc: BED file of the regions
  type: string
  inputBinding:
    position: 0
- id: reads
  doc: BAM file containing the read data
  type: string
  inputBinding:
    position: 1
- id: output
  doc: filename to write the JSON output to
  type: string
  inputBinding:
    position: 2
- id: window_size
  doc: Resize all regions to a specific length
  type: string
  inputBinding:
    prefix: --window_size
- id: i
  doc: Ignores strand information in BED file
  type: boolean
  inputBinding:
    prefix: -i
- id: a
  doc: 'ATAC-seq mode (default: False)'
  type: boolean
  inputBinding:
    prefix: -A
outputs: []
cwlVersion: v1.1
baseCommand:
- dnase_to_JSON.py
- regions
