class: CommandLineTool
id: ../../../sierrapy_recipe.cwl
inputs:
- id: in_input
  doc: JSON result from Sierra web service.
  type: File
  inputBinding:
    prefix: --input
- id: in_output
  doc: File path to store the result.
  type: File
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sierrapy
- recipe
