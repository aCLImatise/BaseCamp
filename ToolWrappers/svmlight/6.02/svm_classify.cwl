class: CommandLineTool
id: svm_classify.cwl
inputs:
- id: in_verbosity_level_default
  doc: '[0..3]  -> verbosity level (default 2)'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_old_output_format
  doc: "[0,1]   -> 0: old output format of V1.0\n-> 1: output the value of decision\
    \ function (default)\n"
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_example_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_model_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output_file
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
- svm_classify
