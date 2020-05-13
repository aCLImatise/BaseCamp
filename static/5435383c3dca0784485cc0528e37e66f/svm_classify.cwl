class: CommandLineTool
id: svm_classify.cwl
inputs:
- id: example_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: model_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: v
  doc: '[0..3]  -> verbosity level (default 2)'
  type: boolean
  inputBinding:
    prefix: -v
- id: f
  doc: '[0,1]   -> 0: old output format of V1.0 -> 1: output the value of decision
    function (default)'
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- svm_classify
