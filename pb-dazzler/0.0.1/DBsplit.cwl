class: CommandLineTool
id: DBsplit.cwl
inputs:
- id: s
  doc: ': Target size of blocks (in Mbp).'
  type: boolean
  inputBinding:
    prefix: -s
- id: x
  doc: ': Trimmed DB has reads >= this threshold.'
  type: boolean
  inputBinding:
    prefix: -x
- id: a
  doc: ': Trimmed DB contains all reads from a well (not just longest).'
  type: boolean
  inputBinding:
    prefix: -a
- id: f
  doc: ': Force the split to occur even if already split.'
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- DBsplit
