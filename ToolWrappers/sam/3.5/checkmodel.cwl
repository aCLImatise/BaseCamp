class: CommandLineTool
id: checkmodel.cwl
inputs:
- id: in_file_contains_model
  doc: ', while file contains a MODEL, or'
  type: File?
  inputBinding:
    prefix: -i
- id: in_model_file
  doc: ', where file contains any model structure, or'
  type: File?
  inputBinding:
    prefix: -model_file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- checkmodel
