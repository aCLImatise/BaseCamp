class: CommandLineTool
id: bank_report.cwl
inputs:
- id: bank_report
  doc: '[options]  -b <bank path>  [NCodes]'
  type: string
  inputBinding:
    position: 0
- id: b
  doc: The directory path of the bank to report
  type: File
  inputBinding:
    prefix: -b
- id: b
  doc: Include BIDs in the output messages (for debugging)
  type: boolean
  inputBinding:
    prefix: -B
- id: e
  doc: Report only objects matching EIDs in file
  type: File
  inputBinding:
    prefix: -E
- id: i
  doc: Report only objects matching IIDs in file
  type: File
  inputBinding:
    prefix: -I
- id: p
  doc: Don't display progress information
  type: boolean
  inputBinding:
    prefix: -p
- id: i
  doc: Display only the objects ids
  type: boolean
  inputBinding:
    prefix: -i
- id: s
  doc: Disregard bank locks and write permissions (spy mode)
  type: boolean
  inputBinding:
    prefix: -s
- id: f
  doc: Just dump the fixed store information
  type: boolean
  inputBinding:
    prefix: -F
- id: v
  doc: Display the compatible bank version
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- bank-report
