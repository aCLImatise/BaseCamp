class: CommandLineTool
id: banner_train.cwl
inputs:
- id: in_matrix
  doc: The matrix from hulk smash
  type: string?
  inputBinding:
    prefix: --matrix
- id: in_outfile
  doc: Where to write the model to
  type: string?
  inputBinding:
    prefix: --outFile
- id: in_processors
  doc: Number of processors to use for training
  type: long?
  inputBinding:
    prefix: --processors
- id: in_estimators
  doc: "Number of estimators to use for training\n"
  type: long?
  inputBinding:
    prefix: --estimators
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
- train
