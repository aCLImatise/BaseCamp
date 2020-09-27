class: CommandLineTool
id: fermi_cg2cofq.cwl
inputs:
- id: in_in_do_tcg_fq
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
- fermi
- cg2cofq
