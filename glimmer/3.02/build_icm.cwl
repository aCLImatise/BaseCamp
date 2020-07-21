class: CommandLineTool
id: ../../../build_icm.cwl
inputs:
- id: set_depth_model
  doc: Set depth of model to <num>
  type: string
  inputBinding:
    prefix: -d
- id: ignore_input_strings
  doc: Ignore input strings with in-frame stop codons
  type: boolean
  inputBinding:
    prefix: -F
- id: set_period_model
  doc: Set period of model to <num>
  type: string
  inputBinding:
    prefix: -p
- id: use_reverse_build
  doc: Use the reverse of input strings to build the model
  type: boolean
  inputBinding:
    prefix: -r
- id: output_model_text
  doc: Output model as text (for debugging only)
  type: boolean
  inputBinding:
    prefix: -t
- id: set_level_higher
  doc: Set verbose level; higher is more diagnostic printouts
  type: string
  inputBinding:
    prefix: -v
- id: set_length_num
  doc: Set length of model window to <num>
  type: string
  inputBinding:
    prefix: -w
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- build-icm
