class: CommandLineTool
id: ../../../pygvcf2coverage.cwl
inputs:
- id: threshold
  doc: DP threshold
  type: string
  inputBinding:
    prefix: --threshold
- id: no_merge
  doc: Do not merge entries
  type: boolean
  inputBinding:
    prefix: --no_merge
- id: distance
  doc: Merging distance
  type: string
  inputBinding:
    prefix: --distance
outputs: []
cwlVersion: v1.1
baseCommand:
- pygvcf2coverage
