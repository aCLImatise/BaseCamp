class: CommandLineTool
id: megahit_toolkit_filterbylen.cwl
inputs:
- id: in_cat
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_contigs_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- megahit_toolkit
- filterbylen
