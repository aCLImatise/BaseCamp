class: CommandLineTool
id: extract_promoter_regions.py.cwl
inputs:
- id: little
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: script
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: to
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: extract
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: promoter
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: regions
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: from
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: genes
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: gzip
  doc: Output will be compressed in GZip format.
  type: boolean
  inputBinding:
    prefix: --gzip
outputs: []
cwlVersion: v1.1
baseCommand:
- extract_promoter_regions.py
