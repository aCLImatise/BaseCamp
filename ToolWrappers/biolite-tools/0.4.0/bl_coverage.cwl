class: CommandLineTool
id: bl_coverage.cwl
inputs:
- id: in_specify_input_file
  doc: specify SAM input file
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_sam_input_has
  doc: "SAM input has a single reference: report coverage for each index\nin the reference\n"
  type: boolean?
  inputBinding:
    prefix: '-1'
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
- id: in_coverage
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bl-coverage
