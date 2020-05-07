class: CommandLineTool
id: dumpSingletons.cwl
inputs:
- id: p
  doc: Attempt to locate the last checkpoint in directory 7-CGW.
  type: boolean
  inputBinding:
    prefix: -p
- id: c
  doc: Look for checkpoints in 'name'
  type: boolean
  inputBinding:
    prefix: -c
- id: g
  doc: Path to gkpStore
  type: boolean
  inputBinding:
    prefix: -g
- id: n
  doc: Checkpoint number to load
  type: boolean
  inputBinding:
    prefix: -n
- id: u
  doc: Use real UIDs for miniscaffolds, otherwise, UIDs start at 1230000
  type: boolean
  inputBinding:
    prefix: -U
- id: s
  doc: Do NOT make mini scaffolds.
  type: boolean
  inputBinding:
    prefix: -S
outputs: []
cwlVersion: v1.1
baseCommand:
- dumpSingletons
