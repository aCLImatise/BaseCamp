class: CommandLineTool
id: sierrapy_introspection.cwl
inputs:
- id: in_output
  doc: File path to store the JSON result.
  type: File?
  inputBinding:
    prefix: --output
- id: in_ugly
  doc: Output compressed JSON result.
  type: boolean?
  inputBinding:
    prefix: --ugly
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sierrapy
- introspection
