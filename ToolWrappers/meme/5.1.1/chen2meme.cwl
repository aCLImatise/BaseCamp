class: CommandLineTool
id: chen2meme.cwl
inputs:
- id: in_skip
  doc: skip this ID (may be repeated)
  type: string
  inputBinding:
    prefix: -skip
- id: in_bg
  doc: "file with background frequencies of letters;\ndefault: uniform background"
  type: File
  inputBinding:
    prefix: -bg
- id: in_pseudo
  doc: "add <total pseudocounts> times letter\nbackground to each frequency; default:\
    \ 0"
  type: long
  inputBinding:
    prefix: -pseudo
- id: in_log_odds
  doc: "print log-odds matrix, too;\ndefault: print frequency matrix only"
  type: boolean
  inputBinding:
    prefix: -logodds
- id: in_url
  doc: "website for the motif; The motif name\nis substituted for MOTIF_NAME;"
  type: string
  inputBinding:
    prefix: -url
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- chen2meme
