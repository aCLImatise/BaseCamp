class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sites2meme.cwl
inputs:
- id: ext
  doc: "the file extension (with '.') of the sites files; the file name minus the\
    \ extension will be used as the motif identifer; default: expect an extension\
    \ of \".txt\""
  type: string
  inputBinding:
    prefix: -ext
- id: map
  doc: tab separated file containing id, name pairs.
  type: string
  inputBinding:
    prefix: -map
- id: protein
  doc: 'Sets the expected alphabet to protein; default: the expected alphabet is DNA'
  type: boolean
  inputBinding:
    prefix: -protein
- id: alph
  doc: 'Set the expected alphabet to the defintion in the file; default: DNA'
  type: string
  inputBinding:
    prefix: -alph
- id: bg
  doc: 'file with background frequencies of letters;  default: use uniform background'
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
  doc: website for the motif; The motif id is substituted for MOTIF_NAME
  type: string
  inputBinding:
    prefix: -url
- id: directory
  doc: ''
  type: Directory
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- sites2meme
