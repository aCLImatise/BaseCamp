class: CommandLineTool
id: sonicparanoid_get_mmseqs2.cwl
inputs:
- id: in_output_directory
  doc: "The directory in which the source files of MMseqs2\nwill be stored."
  type: Directory?
  inputBinding:
    prefix: --output-directory
- id: in_debug
  doc: Output debug information.
  type: boolean?
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: "The directory in which the source files of MMseqs2\nwill be stored."
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints: []
cwlVersion: v1.1
baseCommand:
- sonicparanoid-get-mmseqs2
