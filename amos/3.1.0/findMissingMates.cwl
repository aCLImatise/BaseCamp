class: CommandLineTool
id: findMissingMates.cwl
inputs:
- id: find_missing_mates
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
- id: s
  doc: Looks for mates by virtue of the scaffold
  type: boolean
  inputBinding:
    prefix: -S
- id: m
  doc: Only display missing mates (not reads already present in range)
  type: boolean
  inputBinding:
    prefix: -M
- id: m
  doc: Don't use mate information, just read tiling
  type: boolean
  inputBinding:
    prefix: -m
- id: e
  doc: Contig eid of interest
  type: string
  inputBinding:
    prefix: -E
- id: i
  doc: Contig iid of interest
  type: string
  inputBinding:
    prefix: -I
- id: x
  doc: Start of range
  type: string
  inputBinding:
    prefix: -x
- id: y
  doc: End of range
  type: string
  inputBinding:
    prefix: -y
outputs: []
cwlVersion: v1.1
baseCommand:
- findMissingMates
