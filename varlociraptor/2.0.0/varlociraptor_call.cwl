class: CommandLineTool
id: ../../../varlociraptor_call.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- varlociraptor
- call
