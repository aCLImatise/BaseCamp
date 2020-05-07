class: CommandLineTool
id: last_map_probs.cwl
inputs:
- id: mis_map
  doc: "don't write alignments with mismap probability > M (default: 0.01)"
  type: string
  inputBinding:
    prefix: --mismap
- id: score
  doc: "don't write alignments with score < S (default: e+t*ln[1000])"
  type: string
  inputBinding:
    prefix: --score
outputs: []
cwlVersion: v1.1
baseCommand:
- last-map-probs
