class: CommandLineTool
id: ../../../meme2meme.cwl
inputs:
- id: consensus
  doc: 'numeric names are swapped for an IUPAC consensus; default: use existing names'
  type: boolean
  inputBinding:
    prefix: -consensus
- id: numbers
  doc: 'use numbers instead of strings for motif names; default: use existing ID'
  type: boolean
  inputBinding:
    prefix: -numbers
- id: bg
  doc: 'file with background frequencies of letters; default: use first file background'
  type: File
  inputBinding:
    prefix: -bg
- id: log_odds
  doc: 'print log-odds matrix as well as frequency matrix; default: frequency matrix
    only'
  type: boolean
  inputBinding:
    prefix: -logodds
- id: url
  doc: "website for the motif if it doesn't have one already; The motif name is substituted\
    \ for MOTIF_NAME; default: use existing url"
  type: string
  inputBinding:
    prefix: -url
- id: force_url
  doc: Existing urls are ignored
  type: boolean
  inputBinding:
    prefix: -forceurl
- id: x_alph
  doc: 'Convert all motifs to use the same alphabet as specified in the first file
    which must be a superset; default: all alphabets must be identical'
  type: boolean
  inputBinding:
    prefix: -xalph
- id: meme_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- meme2meme
