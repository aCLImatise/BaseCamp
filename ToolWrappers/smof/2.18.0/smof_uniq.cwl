class: CommandLineTool
id: smof_uniq.cwl
inputs:
- id: in_count
  doc: writes (count|header) in tab-delimited format
  type: boolean
  inputBinding:
    prefix: --count
- id: in_repeated
  doc: print only repeated entries
  type: boolean
  inputBinding:
    prefix: --repeated
- id: in_uniq
  doc: print only unique entries
  type: boolean
  inputBinding:
    prefix: --uniq
- id: in_pack
  doc: combine redundant sequences by concatenating the
  type: boolean
  inputBinding:
    prefix: --pack
- id: in_pack_sep
  doc: "set delimiting string for pack/unpack operations (SOH,\n0x01, by default)"
  type: string
  inputBinding:
    prefix: --pack-sep
- id: in_final_header
  doc: "make headers unique by deleting all but the final\nentry with a given header\
    \ (the sequence is ignored, so\norder matters, you may want to sort by sequence\
    \ first\nfor reproducibility)\n"
  type: boolean
  inputBinding:
    prefix: --final-header
- id: in_input
  doc: input fasta sequence (default = stdin)
  type: string
  inputBinding:
    position: 0
- id: in_headers
  doc: -P, --unpack          reverse the pack operation
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- smof
- uniq
