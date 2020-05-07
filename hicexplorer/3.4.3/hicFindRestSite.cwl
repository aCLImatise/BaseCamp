class: CommandLineTool
id: hicFindRestSite.cwl
inputs:
- id: fast_a
  doc: ''
  type: string
  inputBinding:
    prefix: --fasta
- id: search_pattern
  doc: ''
  type: string
  inputBinding:
    prefix: --searchPattern
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- hicFindRestSite
