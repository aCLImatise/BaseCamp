class: CommandLineTool
id: seqtk_fqchk.cwl
inputs:
- id: in_q
  doc: ''
  type: long
  inputBinding:
    prefix: -q
- id: in_in_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- seqtk
- fqchk
