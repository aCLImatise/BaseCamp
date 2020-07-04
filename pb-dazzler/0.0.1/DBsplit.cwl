class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/DBsplit.cwl
inputs:
- id: target_size_blocks
  doc: ': Target size of blocks (in Mbp).'
  type: boolean
  inputBinding:
    prefix: -s
- id: trimmed_db_reads
  doc: ': Trimmed DB has reads >= this threshold.'
  type: boolean
  inputBinding:
    prefix: -x
- id: trimmed_db_contains
  doc: ': Trimmed DB contains all reads from a well (not just longest).'
  type: boolean
  inputBinding:
    prefix: -a
- id: force_split_occur
  doc: ': Force the split to occur even if already split.'
  type: boolean
  inputBinding:
    prefix: -f
- id: af
  doc: ''
  type: boolean
  inputBinding:
    prefix: -af
- id: int
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- DBsplit
