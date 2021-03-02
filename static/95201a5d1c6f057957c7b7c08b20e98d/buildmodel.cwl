class: CommandLineTool
id: buildmodel.cwl
inputs:
- id: in_train
  doc: ': File to read sequences from.'
  type: File?
  inputBinding:
    prefix: -train
- id: in_insert
  doc: 'or -i <string>: where string is a parameter file.'
  type: File?
  inputBinding:
    prefix: -insert
- id: in_dump_parameters
  doc: "<0, 1, or 2>: Default [0] means only modified parameters are\nprinted to output\
    \ file. [1] outputs all parameters to output file.\n[2] prints all default parameters\
    \ to the file default.params.\n"
  type: File?
  inputBinding:
    prefix: -dump_parameters
- id: in_option
  doc: ''
  type: string?
  inputBinding:
    prefix: -option
- id: in_run_name
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_dump_parameters
  doc: "<0, 1, or 2>: Default [0] means only modified parameters are\nprinted to output\
    \ file. [1] outputs all parameters to output file.\n[2] prints all default parameters\
    \ to the file default.params.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_dump_parameters)
hints: []
cwlVersion: v1.1
baseCommand:
- buildmodel
