class: CommandLineTool
id: contig_cmp_a_file.cwl
inputs:
- id: b_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- contig-cmp
- a-file
