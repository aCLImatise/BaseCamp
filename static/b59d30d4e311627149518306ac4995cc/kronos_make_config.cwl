class: CommandLineTool
id: kronos_make_config.cwl
inputs:
- id: in_output_filename
  doc: "a name for the resultant config file\n"
  type: File?
  inputBinding:
    prefix: --output_filename
- id: in_components
  doc: list of component names
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_filename
  doc: "a name for the resultant config file\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_filename)
hints: []
cwlVersion: v1.1
baseCommand:
- kronos
- make_config
