class: CommandLineTool
id: ovStoreBuild.cwl
inputs:
- id: o
  doc: path to overlap store to create
  type: string
  inputBinding:
    prefix: -O
- id: s
  doc: path to a sequence store
  type: string
  inputBinding:
    prefix: -S
- id: c
  doc: path to ovStoreConfig configuration file
  type: string
  inputBinding:
    prefix: -C
- id: e
  doc: filter overlaps above e fraction error
  type: string
  inputBinding:
    prefix: -e
- id: v
  doc: be overly verbose
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- ovStoreBuild
