class: CommandLineTool
id: samgroupbyname.cwl
inputs:
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: b
  doc: Write output in BAM format
  type: boolean
  inputBinding:
    prefix: -b
- id: o
  doc: Write to FILE rather than standard output
  type: File
  inputBinding:
    prefix: -o
- id: p
  doc: Emit pairs only, discarding any leftover singleton reads
  type: boolean
  inputBinding:
    prefix: -p
- id: v
  doc: Display file information and statistics
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- samgroupbyname
