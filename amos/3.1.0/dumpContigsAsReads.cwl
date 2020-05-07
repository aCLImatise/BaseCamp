class: CommandLineTool
id: dumpContigsAsReads.cwl
inputs:
- id: bank
  doc: bank where assembly is stored
  type: boolean
  inputBinding:
    prefix: -bank
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
outputs: []
cwlVersion: v1.1
baseCommand:
- dumpContigsAsReads
