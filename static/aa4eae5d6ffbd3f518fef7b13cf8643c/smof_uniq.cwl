class: CommandLineTool
id: smof_uniq.cwl
inputs:
- id: input
  doc: input fasta sequence (default = stdin)
  type: string
  inputBinding:
    position: 0
- id: count
  doc: writes (count|header) in tab-delimited format
  type: boolean
  inputBinding:
    prefix: --count
- id: repeated
  doc: print only repeated entries
  type: boolean
  inputBinding:
    prefix: --repeated
- id: uniq
  doc: print only unique entries
  type: boolean
  inputBinding:
    prefix: --uniq
- id: pack
  doc: combine redundant sequences by concatenating the headers
  type: boolean
  inputBinding:
    prefix: --pack
- id: unpack
  doc: reverse the pack operation
  type: boolean
  inputBinding:
    prefix: --unpack
- id: pack_sep
  doc: set delimiting string for pack/unpack operations (SOH, 0x01, by default)
  type: string
  inputBinding:
    prefix: --pack-sep
- id: final_header
  doc: make headers unique by deleting all but the final entry with a given header
    (the sequence is ignored, so order matters, you may want to sort by sequence first
    for reproducibility)
  type: boolean
  inputBinding:
    prefix: --final-header
outputs: []
cwlVersion: v1.1
baseCommand:
- smof
- uniq
