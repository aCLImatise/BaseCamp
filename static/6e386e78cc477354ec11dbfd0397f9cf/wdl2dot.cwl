class: CommandLineTool
id: ../../../wdl2dot.cwl
inputs:
- id: input_file
  doc: Input wdl file
  type: string
  inputBinding:
    prefix: --input_file
- id: output_file
  doc: Output dot file
  type: string
  inputBinding:
    prefix: --output_file
outputs: []
cwlVersion: v1.1
baseCommand:
- wdl2dot
