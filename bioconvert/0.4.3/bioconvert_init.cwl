class: CommandLineTool
id: bioconvert_init.cwl
inputs:
- id: input_extension
  doc: input_extension
  type: string
  inputBinding:
    prefix: --input-extension
- id: output_extension
  doc: output_extension
  type: string
  inputBinding:
    prefix: --output-extension
outputs: []
cwlVersion: v1.1
baseCommand:
- bioconvert_init
