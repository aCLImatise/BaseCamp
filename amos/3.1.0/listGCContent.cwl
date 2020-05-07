class: CommandLineTool
id: listGCContent.cwl
inputs:
- id: list_gc_content
  doc: '[options]  -b <bank path>'
  type: string
  inputBinding:
    position: 0
- id: s
  doc: Disregard bank locks and write permissions (spy mode)
  type: boolean
  inputBinding:
    prefix: -s
- id: v
  doc: Display the compatible bank version
  type: boolean
  inputBinding:
    prefix: -v
- id: e
  doc: Use EIDs instead of IIDs for identifiers
  type: boolean
  inputBinding:
    prefix: -e
- id: r
  doc: Ignore clear range and dump entire sequence
  type: boolean
  inputBinding:
    prefix: -r
- id: c
  doc: Dump Contigs instead of reads
  type: boolean
  inputBinding:
    prefix: -C
- id: e
  doc: Dump just the eids listed in file
  type: File
  inputBinding:
    prefix: -E
- id: i
  doc: Dump just the iids listed in file
  type: File
  inputBinding:
    prefix: -I
outputs: []
cwlVersion: v1.1
baseCommand:
- listGCContent
