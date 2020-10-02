class: CommandLineTool
id: DBsplit.cwl
inputs:
- id: in_target_size_blocks
  doc: ': Target size of blocks (in Mbp).'
  type: boolean
  inputBinding:
    prefix: -s
- id: in_trimmed_db_reads
  doc: ': Trimmed DB has reads >= this threshold.'
  type: boolean
  inputBinding:
    prefix: -x
- id: in_trimmed_db_contains
  doc: ': Trimmed DB contains all reads from a well (not just longest).'
  type: boolean
  inputBinding:
    prefix: -a
- id: in_force_split_occur
  doc: ': Force the split to occur even if already split.'
  type: boolean
  inputBinding:
    prefix: -f
- id: in_af
  doc: ''
  type: boolean
  inputBinding:
    prefix: -af
- id: in_int
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- DBsplit
