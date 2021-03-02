class: CommandLineTool
id: kronos_update_config.cwl
inputs:
- id: in_output_filename
  doc: "a name for the output file\n"
  type: File?
  inputBinding:
    prefix: --output_filename
- id: in_file
  doc: "paths to the config files, e.g. update_config\n<old_config.yaml> <new_config.yaml>"
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_filename
  doc: "a name for the output file\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_filename)
hints: []
cwlVersion: v1.1
baseCommand:
- kronos
- update_config
