class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/predict_track.cwl
inputs:
- id: ehl_model_alphabet
  doc: ',EHL                   Model alphabet and alphabet to predict OR'
  type: string
  inputBinding:
    prefix: -a
- id: alphabet_def
  doc: "\"malpha - palpha lets' Model alphabet and alphabet to predict (required)"
  type: boolean
  inputBinding:
    prefix: -alphabet_def
- id: option
  doc: ''
  type: string
  inputBinding:
    prefix: -option
- id: run_name
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- predict_track
