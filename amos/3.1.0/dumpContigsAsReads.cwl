class: CommandLineTool
id: ../../../dumpContigsAsReads.cwl
inputs:
- id: bank
  doc: bank where assembly is stored
  type: boolean
  inputBinding:
    prefix: -bank
- id: dump_just_eids
  doc: Dump just the contig eids listed in file
  type: File
  inputBinding:
    prefix: -E
- id: dump_just_iids
  doc: Dump just the contig iids listed in file
  type: File
  inputBinding:
    prefix: -I
outputs: []
cwlVersion: v1.1
baseCommand:
- dumpContigsAsReads
