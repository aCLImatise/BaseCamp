class: CommandLineTool
id: crux_predict_peptide_ions_mono..cwl
inputs:
- id: in_crux
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_predict_peptide_ions
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_peptide_sequence
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- crux
- predict-peptide-ions
- mono.
