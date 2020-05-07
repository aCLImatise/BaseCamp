class: CommandLineTool
id: splitUnitigs.cwl
inputs:
- id: g
  doc: Mandatory path to a gkpStore.
  type: boolean
  inputBinding:
    prefix: -g
- id: t
  doc: Mandatory path to a tigStore (can exist or not).
  type: boolean
  inputBinding:
    prefix: -t
- id: u
  doc: Process only unitig IID i
  type: string
  inputBinding:
    prefix: -u
- id: s
  doc: Do NOT split if the break occurs in the terminal S non-contained reads The
    default 0 disables this feature
  type: string
  inputBinding:
    prefix: -s
- id: n
  doc: Do NOT recompute consensus sequence, only generate new split unitigs
  type: boolean
  inputBinding:
    prefix: -N
- id: n
  doc: Do NOT modify the tigStore
  type: boolean
  inputBinding:
    prefix: -n
- id: v
  doc: Increase consensus verbosity
  type: boolean
  inputBinding:
    prefix: -V
- id: e
  doc: Generate a picture of the evidence for each unitig
  type: boolean
  inputBinding:
    prefix: -E
outputs: []
cwlVersion: v1.1
baseCommand:
- splitUnitigs
