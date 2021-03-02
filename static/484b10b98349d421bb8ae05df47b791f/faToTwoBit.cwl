class: CommandLineTool
id: faToTwoBit.cwl
inputs:
- id: in_long
  doc: "use 64-bit offsets for index.   Allow for twoBit to contain more than 4Gb\
    \ of sequence.\nNOT COMPATIBLE WITH OLDER CODE."
  type: boolean?
  inputBinding:
    prefix: -long
- id: in_no_mask
  doc: Ignore lower-case masking in fa file.
  type: boolean?
  inputBinding:
    prefix: -noMask
- id: in_strip_version
  doc: Strip off version number after '.' for GenBank accessions.
  type: boolean?
  inputBinding:
    prefix: -stripVersion
- id: in_ignored_ups
  doc: Convert first sequence only if there are duplicate sequence
  type: boolean?
  inputBinding:
    prefix: -ignoreDups
- id: in_names_dot
  doc: Use 'twoBitDup' to find duplicate sequences.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- faToTwoBit
