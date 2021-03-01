class: CommandLineTool
id: locarna_deviation.cwl
inputs:
- id: in_deviation
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_aln_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_ref_aln_file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- locarna_deviation
