class: CommandLineTool
id: crux_predict_peptide_ions_charge state.cwl
inputs:
- id: peptide_sequence
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: charge_state
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- crux
- predict-peptide-ions
- charge state
