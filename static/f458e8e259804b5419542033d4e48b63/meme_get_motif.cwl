class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/meme_get_motif.cwl
inputs:
- id: id
  doc: id of motif to extract from the MEME file
  type: string
  inputBinding:
    prefix: -id
- id: match_alternate_i
  doc: match alternate id instead of id
  type: boolean
  inputBinding:
    prefix: -a
- id: i_a
  doc: match either id or alternate id
  type: boolean
  inputBinding:
    prefix: -ia
- id: rc
  doc: reverse complement motifs (assuming alphabet allows)
  type: boolean
  inputBinding:
    prefix: -rc
- id: all
  doc: get all motifs in the MEME file
  type: boolean
  inputBinding:
    prefix: -all
- id: meme_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- meme-get-motif
