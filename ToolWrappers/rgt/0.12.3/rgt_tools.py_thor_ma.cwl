class: CommandLineTool
id: rgt_tools.py_thor_ma.cwl
inputs:
- id: in_input_data_config
  doc: Input data config.
  type: string?
  inputBinding:
    prefix: -i
- id: in_thor
  doc: result  Output directory of THOR.
  type: Directory?
  inputBinding:
    prefix: -thor
- id: in_output_directory
  doc: Output directory
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_define_extension_size
  doc: Define the extension size.
  type: long?
  inputBinding:
    prefix: -e
- id: in_size_define_size
  doc: size        Define the bin size.
  type: long?
  inputBinding:
    prefix: -b
- id: in_result
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_thor
  doc: result  Output directory of THOR.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_thor)
- id: out_output_directory
  doc: Output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints: []
cwlVersion: v1.1
baseCommand:
- rgt-tools.py
- thor_ma
