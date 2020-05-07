class: CommandLineTool
id: frgs2clones.cwl
inputs:
- id: g
  doc: read fragments from this gatekeeper store
  type: string
  inputBinding:
    prefix: -g
- id: c
  doc: build an alignment for overlapping fragments
  type: boolean
  inputBinding:
    prefix: -C
- id: n
  doc: build a scaffold for non-overlapping mated fragments
  type: boolean
  inputBinding:
    prefix: -N
- id: u
  doc: use real UIDs from the UID server
  type: boolean
  inputBinding:
    prefix: -U
outputs: []
cwlVersion: v1.1
baseCommand:
- frgs2clones
