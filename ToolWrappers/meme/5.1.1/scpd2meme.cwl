class: CommandLineTool
id: scpd2meme.cwl
inputs:
- id: in_skip
  doc: skip this ID (may be repeated)
  type: string?
  inputBinding:
    prefix: -skip
- id: in_numbers
  doc: use numbers instead of strings as motif names
  type: boolean?
  inputBinding:
    prefix: -numbers
- id: in_bg
  doc: "file with background frequencies of letters;\ndefault: uniform background"
  type: File?
  inputBinding:
    prefix: -bg
- id: in_pseudo
  doc: "add <total pseudocounts> times letter\nbackground to each frequency; default:\
    \ 0"
  type: long?
  inputBinding:
    prefix: -pseudo
- id: in_log_odds
  doc: "print log-odds matrix, too;\ndefault: print frequency matrix only"
  type: boolean?
  inputBinding:
    prefix: -logodds
- id: in_url
  doc: "website for the motif; The scpd ID is\nsubstituted for MOTIF_NAME; default:\
    \ no url\n"
  type: string?
  inputBinding:
    prefix: -url
- id: in_matrix_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- scpd2meme
