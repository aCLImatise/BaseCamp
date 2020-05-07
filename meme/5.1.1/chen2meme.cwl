class: CommandLineTool
id: chen2meme.cwl
inputs:
- id: skip
  doc: skip this ID (may be repeated)
  type: string
  inputBinding:
    prefix: -skip
- id: bg
  doc: 'file with background frequencies of letters;  default: uniform background'
  type: string
  inputBinding:
    prefix: -bg
- id: pseudo
  doc: 'add <total pseudocounts> times letter  background to each frequency; default:
    0'
  type: string
  inputBinding:
    prefix: -pseudo
- id: log_odds
  doc: 'print log-odds matrix, too;  default: print frequency matrix only'
  type: boolean
  inputBinding:
    prefix: -logodds
- id: url
  doc: website for the motif; The motif name is substituted for MOTIF_NAME;
  type: string
  inputBinding:
    prefix: -url
outputs: []
cwlVersion: v1.1
baseCommand:
- chen2meme
