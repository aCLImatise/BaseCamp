class: CommandLineTool
id: overlapStoreBuild.cwl
inputs:
- id: o
  doc: path to store to create
  type: string
  inputBinding:
    prefix: -o
- id: g
  doc: path to gkpStore for this assembly
  type: string
  inputBinding:
    prefix: -g
- id: f
  doc: use up to 'f' files for store creation
  type: string
  inputBinding:
    prefix: -F
- id: m
  doc: use up to 'm' MB memory for store creation
  type: string
  inputBinding:
    prefix: -M
- id: plc
  doc: type of filtering for PLC fragments -- NOT SUPPORTED
  type: string
  inputBinding:
    prefix: -plc
- id: obt
  doc: filter overlaps for OBT
  type: boolean
  inputBinding:
    prefix: -obt
- id: dup
  doc: filter overlaps for OBT/dedupe
  type: boolean
  inputBinding:
    prefix: -dup
- id: e
  doc: filter overlaps above e fraction error
  type: string
  inputBinding:
    prefix: -e
- id: l
  doc: read input filenames from 'flieList'
  type: File
  inputBinding:
    prefix: -L
- id: big
  doc: handle a large number of overlaps in the last library iid is the first read
    iid in the last library, from 'gatekeeper -dumpinfo *gkpStore'
  type: string
  inputBinding:
    prefix: -big
outputs: []
cwlVersion: v1.1
baseCommand:
- overlapStoreBuild
