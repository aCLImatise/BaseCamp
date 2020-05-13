class: CommandLineTool
id: contig_cmp_b_file.cwl
inputs:
- id: a_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: b_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- contig-cmp
- b-file
