class: CommandLineTool
id: cooler_info.cwl
inputs:
- id: in_field
  doc: Print the value of a specific info field.
  type: string?
  inputBinding:
    prefix: --field
- id: in_metadata
  doc: Print the user metadata in JSON format.
  type: boolean?
  inputBinding:
    prefix: --metadata
- id: in_out
  doc: Output file (defaults to stdout)
  type: File?
  inputBinding:
    prefix: --out
- id: in_cool_path
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output file (defaults to stdout)
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- cooler
- info
