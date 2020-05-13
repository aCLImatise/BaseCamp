class: CommandLineTool
id: merge_tsvs.py.cwl
inputs:
- id: input_t_svs
  doc: Input tab separated files.
  type: string
  inputBinding:
    position: 0
- id: j
  doc: Join type (outer).
  type: string
  inputBinding:
    prefix: -j
- id: f
  doc: Join on this field (Read).
  type: string
  inputBinding:
    prefix: -f
- id: o
  doc: Output tsv (merge_tsvs.tsv).
  type: string
  inputBinding:
    prefix: -o
- id: z
  doc: Fill NA values with zero.
  type: boolean
  inputBinding:
    prefix: -z
outputs: []
cwlVersion: v1.1
baseCommand:
- merge_tsvs.py
