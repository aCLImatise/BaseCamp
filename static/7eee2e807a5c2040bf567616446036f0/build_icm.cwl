class: CommandLineTool
id: build_icm.cwl
inputs:
- id: in_set_depth_model
  doc: Set depth of model to <num>
  type: long?
  inputBinding:
    prefix: -d
- id: in_ignore_input_strings
  doc: Ignore input strings with in-frame stop codons
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_set_period_model
  doc: Set period of model to <num>
  type: long?
  inputBinding:
    prefix: -p
- id: in_use_reverse_build
  doc: Use the reverse of input strings to build the model
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_output_model_text
  doc: Output model as text (for debugging only)
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_set_verbose_level
  doc: Set verbose level; higher is more diagnostic printouts
  type: long?
  inputBinding:
    prefix: -v
- id: in_set_length_model
  doc: "Set length of model window to <num>\n"
  type: long?
  inputBinding:
    prefix: -w
- id: in_output_file
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
- build-icm
