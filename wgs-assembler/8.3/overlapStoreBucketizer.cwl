class: CommandLineTool
id: overlapStoreBucketizer.cwl
inputs:
- id: c
  doc: path to store to create
  type: string
  inputBinding:
    prefix: -c
- id: g
  doc: path to gkpStore for this assembly
  type: string
  inputBinding:
    prefix: -g
- id: i
  doc: input overlaps
  type: File
  inputBinding:
    prefix: -i
- id: job
  doc: index of this overlap input file
  type: string
  inputBinding:
    prefix: -job
- id: f
  doc: use up to 'f' files for store creation
  type: string
  inputBinding:
    prefix: -F
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
- id: raw
  doc: write uncompressed buckets
  type: boolean
  inputBinding:
    prefix: -raw
outputs: []
cwlVersion: v1.1
baseCommand:
- overlapStoreBucketizer
