class: CommandLineTool
id: merge_coords.cwl
inputs:
- id: in_output
  doc: Output file (stdout)
  type: File?
  inputBinding:
    prefix: --output
- id: in_merge_coords_cmdline
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_coords
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output file (stdout)
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- merge_coords
