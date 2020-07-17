class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/taipale2meme.cwl
inputs:
- id: postfix
  doc: text to append to motif names.
  type: string
  inputBinding:
    prefix: -postfix
- id: strands
  doc: "|2            print '+ -' or '+' on the MEME strand line; default: 2 (prints\
    \ '+ -')"
  type: string
  inputBinding:
    prefix: -strands
- id: bg
  doc: 'file with background frequencies of letters;  default: uniform'
  type: string
  inputBinding:
    prefix: -bg
- id: pseudo
  doc: 'add <A> times background frequency to each count when computing letter frequencies
    default: 0'
  type: string
  inputBinding:
    prefix: -pseudo
- id: log_odds
  doc: 'print log-odds matrix as well as frequency matrix; default: frequency matrix
    only'
  type: boolean
  inputBinding:
    prefix: -logodds
- id: url
  doc: "website for the motif if it doesn't have one  already; The motif name is substituted\
    \ for  MOTIF_NAME; default: use existing url"
  type: string
  inputBinding:
    prefix: -url
outputs: []
cwlVersion: v1.1
baseCommand:
- taipale2meme
