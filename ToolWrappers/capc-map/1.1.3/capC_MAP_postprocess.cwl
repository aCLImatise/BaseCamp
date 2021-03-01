class: CommandLineTool
id: capC_MAP_postprocess.cwl
inputs:
- id: in_configuration_file
  doc: configuration file
  type: File?
  inputBinding:
    prefix: -c
- id: in_directory_created_output
  doc: directory to be created for output
  type: Directory?
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_directory_created_output
  doc: directory to be created for output
  type: Directory?
  outputBinding:
    glob: $(inputs.in_directory_created_output)
hints: []
cwlVersion: v1.1
baseCommand:
- capC-MAP
- postprocess
