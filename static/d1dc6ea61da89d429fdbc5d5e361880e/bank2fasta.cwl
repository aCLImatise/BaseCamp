class: CommandLineTool
id: bank2fasta.cwl
inputs:
- id: bank
  doc: bank where assembly is stored
  type: string
  inputBinding:
    prefix: -bank
- id: eid
  doc: report eids
  type: boolean
  inputBinding:
    prefix: -eid
- id: iid
  doc: report iids (default)
  type: boolean
  inputBinding:
    prefix: -iid
- id: e
  doc: Dump just the contig eids listed in file
  type: File
  inputBinding:
    prefix: -E
- id: i
  doc: Dump just the contig iids listed in file
  type: File
  inputBinding:
    prefix: -I
- id: q
  doc: Report qualities in file
  type: File
  inputBinding:
    prefix: -q
- id: d
  doc: Show contig details (num reads, coverage) on fasta header line
  type: boolean
  inputBinding:
    prefix: -d
outputs: []
cwlVersion: v1.1
baseCommand:
- bank2fasta
