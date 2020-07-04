class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mb_extract_sites.cwl
inputs:
- id: transition_from
  doc: ''
  type: string
  inputBinding:
    prefix: --transition_from
- id: gff_file
  doc: ''
  type: string
  inputBinding:
    prefix: --gff_file
- id: extract_sites
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-extract-sites
