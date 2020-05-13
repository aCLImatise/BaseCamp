class: CommandLineTool
id: rtg_sdfsubset.cwl
inputs:
- id: input
  doc: SDF containing sequences
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: output SDF
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- rtg
- sdfsubset
