class: CommandLineTool
id: fermi_trimseq.cwl
inputs:
- id: in_n
  doc: ''
  type: boolean
  inputBinding:
    prefix: -N
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fermi
- trimseq
