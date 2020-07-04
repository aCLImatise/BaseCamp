class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/priority2meme.cwl
inputs:
- id: numbers
  doc: use numbers instead of strings as motif names;
  type: boolean
  inputBinding:
    prefix: -numbers
- id: bg
  doc: 'file with background frequencies of letters;  default: uniform background'
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
  doc: 'website for the motif; default: no url'
  type: string
  inputBinding:
    prefix: -url
- id: matrix_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- priority2meme
