class: CommandLineTool
id: unitigger.cwl
inputs:
- id: in_spec_file
  doc: spec file (string [=])
  type: boolean?
  inputBinding:
    prefix: --spec_file
- id: in_depot
  doc: depot path (string)
  type: boolean?
  inputBinding:
    prefix: --depot
- id: in_working_directory
  doc: working directory (string [=.])
  type: boolean?
  inputBinding:
    prefix: --working_directory
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- unitigger
