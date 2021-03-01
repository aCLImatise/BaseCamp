class: CommandLineTool
id: mkfake.cwl
inputs:
- id: in_plates
  doc: ': number of plates (default: 1)'
  type: boolean?
  inputBinding:
    prefix: -plates
- id: in_runs
  doc: ': number of plate runs (acquisitions) (default: 1)'
  type: boolean?
  inputBinding:
    prefix: -runs
- id: in_rows
  doc: ': number of rows in a plate (default: 1)'
  type: boolean?
  inputBinding:
    prefix: -rows
- id: in_columns
  doc: ': number of columns in a plate (default: 1)'
  type: boolean?
  inputBinding:
    prefix: -columns
- id: in_fields
  doc: ': number of fields in a plate (default: 1)'
  type: boolean?
  inputBinding:
    prefix: -fields
- id: in_debug
  doc: ': turn on debugging output'
  type: boolean?
  inputBinding:
    prefix: -debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mkfake
