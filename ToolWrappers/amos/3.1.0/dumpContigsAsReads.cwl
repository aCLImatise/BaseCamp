class: CommandLineTool
id: dumpContigsAsReads.cwl
inputs:
- id: in_bank
  doc: bank where assembly is stored
  type: boolean
  inputBinding:
    prefix: -bank
- id: in_dump_just_eids
  doc: Dump just the contig eids listed in file
  type: File
  inputBinding:
    prefix: -E
- id: in_dump_just_iids
  doc: Dump just the contig iids listed in file
  type: File
  inputBinding:
    prefix: -I
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dumpContigsAsReads
