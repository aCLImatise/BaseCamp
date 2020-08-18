class: CommandLineTool
id: ../../../filter_contig.cwl
inputs:
- id: contig_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: id
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- filter_contig
