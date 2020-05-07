class: CommandLineTool
id: analyzeScaffolds.cwl
inputs:
- id: g
  doc: mandatory path to the gkpStore
  type: string
  inputBinding:
    prefix: -g
- id: t
  doc: version     mandatory path to the tigStore and version
  type: string
  inputBinding:
    prefix: -t
- id: c
  doc: version   optional path to a checkpoint and version
  type: string
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- analyzeScaffolds
