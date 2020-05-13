class: CommandLineTool
id: addReadsToUnitigs.cwl
inputs:
- id: g
  doc: gatekeeper store
  type: string
  inputBinding:
    prefix: -g
- id: t
  doc: version   tigStore and version to modify
  type: string
  inputBinding:
    prefix: -t
- id: m
  doc: input map coords
  type: string
  inputBinding:
    prefix: -m
- id: m
  doc: gatekeeper output fastqUIDmap for read name to IID translation
  type: string
  inputBinding:
    prefix: -M
- id: r
  doc: rebuild consensus including the new reads
  type: boolean
  inputBinding:
    prefix: -r
- id: v
  doc: show result
  type: boolean
  inputBinding:
    prefix: -v
- id: v
  doc: verbose
  type: boolean
  inputBinding:
    prefix: -V
- id: load_all
  doc: load all reads in gkpStore into memory (faster consensus)
  type: boolean
  inputBinding:
    prefix: -loadall
- id: n
  doc: do all the work, but discard the result
  type: boolean
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- addReadsToUnitigs
