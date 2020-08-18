class: CommandLineTool
id: ../../../nasp.cwl
inputs:
- id: config
  doc: Path to the configuration xml file.
  type: string
  inputBinding:
    prefix: --config
outputs: []
cwlVersion: v1.1
baseCommand:
- nasp
