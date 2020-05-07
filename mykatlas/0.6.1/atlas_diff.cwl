class: CommandLineTool
id: atlas_diff.cwl
inputs:
- id: sample
  doc: sample id
  type: string
  inputBinding:
    position: 0
- id: graph
  doc: The graph to compare new sample against
  type: string
  inputBinding:
    position: 1
- id: ctx
  doc: cortex graph binary
  type: string
  inputBinding:
    prefix: --ctx
- id: quiet
  doc: do not output warnings to stderr
  type: boolean
  inputBinding:
    prefix: --quiet
- id: add
  doc: after comparing, add the new sample to the graph
  type: boolean
  inputBinding:
    prefix: --add
outputs: []
cwlVersion: v1.1
baseCommand:
- atlas
- diff
