class: CommandLineTool
id: RNAparconv.cwl
inputs:
- id: in_full_help
  doc: Print help, including hidden options, and exit
  type: boolean
  inputBinding:
    prefix: --full-help
- id: in_output
  doc: "Specify an output file name. If argument is missing\nthe converted energy\
    \ parameters are printed to\n'stdout'."
  type: File
  inputBinding:
    prefix: --output
- id: in_input
  doc: "Specify an input file name. If argument is missing\nthe energy parameter input\
    \ can be supplied via\n'stdin'."
  type: File
  inputBinding:
    prefix: --input
- id: in_vanilla
  doc: "Print just as much as needed to represent the given\nenergy parameters data\
    \ set.\nThis option overrides all other output settings!\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --vanilla
- id: in_dump
  doc: "Just dump Vienna 1.8.4 energy parameters in format\nused since 2.0.\nThis\
    \ option skips any energy parameter input!\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --dump
- id: in_silent
  doc: "Print just energy parameters and appropriate comment\nlines but suppress all\
    \ other output\n(default=off)"
  type: boolean
  inputBinding:
    prefix: --silent
- id: in_input_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_output_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Specify an output file name. If argument is missing\nthe converted energy\
    \ parameters are printed to\n'stdout'."
  type: File
  outputBinding:
    glob: $(inputs.in_output)
- id: out_output_file
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- RNAparconv
