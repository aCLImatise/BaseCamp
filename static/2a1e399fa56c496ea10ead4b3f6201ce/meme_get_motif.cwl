class: CommandLineTool
id: meme_get_motif.cwl
inputs:
- id: in_id
  doc: id of motif to extract from the MEME file
  type: File
  inputBinding:
    prefix: -id
- id: in_match_alternate_i
  doc: match alternate id instead of id
  type: boolean
  inputBinding:
    prefix: -a
- id: in_i_a
  doc: match either id or alternate id
  type: boolean
  inputBinding:
    prefix: -ia
- id: in_rc
  doc: reverse complement motifs (assuming alphabet allows)
  type: boolean
  inputBinding:
    prefix: -rc
- id: in_all
  doc: get all motifs in the MEME file
  type: boolean
  inputBinding:
    prefix: -all
- id: in_meme_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- meme-get-motif
