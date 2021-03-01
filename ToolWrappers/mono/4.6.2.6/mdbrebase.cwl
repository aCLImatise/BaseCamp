class: CommandLineTool
id: mdbrebase.cwl
inputs:
- id: in_output
  doc: "Output directory to the mdb file, replace existing\none if ommited"
  type: File?
  inputBinding:
    prefix: --output
- id: in_verbose
  doc: "Be verbose with output (show individual path\nrewrites)"
  type: File?
  inputBinding:
    prefix: --verbose
- id: in_filenames
  doc: Only operate on file names, not full absolute paths
  type: boolean?
  inputBinding:
    prefix: --filenames
- id: in_regex
  doc: Input pattern is a regular expression
  type: boolean?
  inputBinding:
    prefix: --regex
- id: in_input_pattern
  doc: "Input pattern to replace (must not be a prefix to\noutput-pattern)(required)"
  type: string?
  inputBinding:
    prefix: --input-pattern
- id: in_output_pattern
  doc: Output pattern to replace (required)
  type: string?
  inputBinding:
    prefix: --output-pattern
- id: in_quiet
  doc: Be quiet with output (not show anything but errors)
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_assembly_to_fix
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output directory to the mdb file, replace existing\none if ommited"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_verbose
  doc: "Be verbose with output (show individual path\nrewrites)"
  type: File?
  outputBinding:
    glob: $(inputs.in_verbose)
hints: []
cwlVersion: v1.1
baseCommand:
- mdbrebase
