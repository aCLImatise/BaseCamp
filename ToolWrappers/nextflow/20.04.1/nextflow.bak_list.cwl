class: CommandLineTool
id: nextflow.bak_list.cwl
inputs:
- id: in_list
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- nextflow.bak
- list
