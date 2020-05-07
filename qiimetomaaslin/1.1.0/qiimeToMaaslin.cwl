class: CommandLineTool
id: qiimeToMaaslin.py.cwl
inputs:
- id: n
  doc: Don't normalize data values by column sums
  type: boolean
  inputBinding:
    prefix: -n
- id: s
  doc: String representing missing metadata values
  type: string
  inputBinding:
    prefix: -s
- id: m
  doc: Per-column quality control, minimum fraction of maximum value
  type: long
  inputBinding:
    prefix: -m
- id: t
  doc: Depth of taxonomy to be computed, negative=from right, 0=no change
  type: string
  inputBinding:
    prefix: -t
- id: l
  doc: Output only leaves, not complete taxonomy
  type: boolean
  inputBinding:
    prefix: -l
- id: x
  doc: File from which sample IDs to exclude are read
  type: string
  inputBinding:
    prefix: -x
outputs: []
cwlVersion: v1.1
baseCommand:
- qiimeToMaaslin.py
