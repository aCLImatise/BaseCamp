class: CommandLineTool
id: filter_erroneous_overlaps.cwl
inputs:
- id: in_depot
  doc: depot path (string)
  type: boolean
  inputBinding:
    prefix: --depot
- id: in_spec_file
  doc: spec file path (string [=])
  type: boolean
  inputBinding:
    prefix: --spec_file
- id: in_working_directory
  doc: working directory (string [=.])
  type: boolean
  inputBinding:
    prefix: --working_directory
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- filter_erroneous_overlaps
