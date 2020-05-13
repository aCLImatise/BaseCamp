class: CommandLineTool
id: terminator.cwl
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
- id: o
  doc: write the output here
  type: string
  inputBinding:
    prefix: -o
- id: s
  doc: don't use real UIDs, but start counting from here
  type: string
  inputBinding:
    prefix: -s
- id: n
  doc: use this UID namespace
  type: string
  inputBinding:
    prefix: -n
- id: e
  doc: use this UID server
  type: string
  inputBinding:
    prefix: -E
outputs: []
cwlVersion: v1.1
baseCommand:
- terminator
