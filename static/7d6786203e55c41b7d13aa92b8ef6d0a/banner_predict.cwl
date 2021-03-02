class: CommandLineTool
id: banner_predict.cwl
inputs:
- id: in_model
  doc: The model that banner trained
  type: string?
  inputBinding:
    prefix: --model
- id: in_probability
  doc: "The probability threshold for reporting\nclassifications"
  type: string?
  inputBinding:
    prefix: --probability
- id: in_verbose
  doc: "Print all predictions and probability, even if\nthreshold not met yet\n"
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_banner
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
- banner
- predict
