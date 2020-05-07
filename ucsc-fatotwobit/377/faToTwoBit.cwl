class: CommandLineTool
id: faToTwoBit.cwl
inputs:
- id: long
  doc: use 64-bit offsets for index.   Allow for twoBit to contain more than 4Gb of
    sequence.  NOT COMPATIBLE WITH OLDER CODE.
  type: boolean
  inputBinding:
    prefix: -long
- id: no_mask
  doc: Ignore lower-case masking in fa file.
  type: boolean
  inputBinding:
    prefix: -noMask
- id: strip_version
  doc: Strip off version number after '.' for GenBank accessions.
  type: boolean
  inputBinding:
    prefix: -stripVersion
- id: ignored_ups
  doc: Convert first sequence only if there are duplicate sequence names.  Use 'twoBitDup'
    to find duplicate sequences.
  type: boolean
  inputBinding:
    prefix: -ignoreDups
outputs: []
cwlVersion: v1.1
baseCommand:
- faToTwoBit
