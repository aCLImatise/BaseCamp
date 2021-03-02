class: CommandLineTool
id: last_map_probs.cwl
inputs:
- id: in_mis_map
  doc: "don't write alignments with mismap probability > M\n(default: 0.01)"
  type: double?
  inputBinding:
    prefix: --mismap
- id: in_score
  doc: "don't write alignments with score < S (default:\ne+t*ln[1000])\n"
  type: long?
  inputBinding:
    prefix: --score
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- last-map-probs
