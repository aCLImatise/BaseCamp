class: CommandLineTool
id: ../../../tamo2meme.cwl
inputs:
- id: skip
  doc: skip this ID (may be repeated)
  type: string
  inputBinding:
    prefix: -skip
- id: numbers
  doc: use numbers instead of strings as motif names
  type: boolean
  inputBinding:
    prefix: -numbers
- id: bg
  doc: 'file with background frequencies of letters; default: uniform background'
  type: string
  inputBinding:
    prefix: -bg
- id: pseudo
  doc: 'add <total pseudocounts> times letter background to each frequency; default:
    0'
  type: string
  inputBinding:
    prefix: -pseudo
- id: log_odds
  doc: 'print log-odds matrix, too; default: print frequency matrix only'
  type: boolean
  inputBinding:
    prefix: -logodds
- id: url
  doc: 'website for the motif; The tamo ID is substituted for MOTIF_NAME; default:
    no url'
  type: string
  inputBinding:
    prefix: -url
- id: tamo_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- tamo2meme
