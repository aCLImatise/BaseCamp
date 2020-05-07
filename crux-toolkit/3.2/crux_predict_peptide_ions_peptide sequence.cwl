class: CommandLineTool
id: crux_predict_peptide_ions_peptide sequence.cwl
inputs:
- id: charge_state
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- crux
- predict-peptide-ions
- peptide sequence
