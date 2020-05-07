class: CommandLineTool
id: overlapStoreIndexer.cwl
inputs:
- id: o
  doc: path to overlap store to build the final index for
  type: string
  inputBinding:
    prefix: -o
- id: f
  doc: number of slices used in bucketizing/sorting
  type: string
  inputBinding:
    prefix: -F
- id: t
  doc: explicitly test a previously constructed index
  type: string
  inputBinding:
    prefix: -t
- id: f
  doc: when testing, also create a new 'idx.fixed' which might resolve rare problems
  type: boolean
  inputBinding:
    prefix: -f
- id: delete
  doc: remove intermediate files when the index is successfully created
  type: boolean
  inputBinding:
    prefix: -delete
outputs: []
cwlVersion: v1.1
baseCommand:
- overlapStoreIndexer
