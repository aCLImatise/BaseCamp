class: CommandLineTool
id: beeml2meme.cwl
inputs:
- id: bg
  doc: 'file with background frequencies of letters default: uniform background'
  type: string
  inputBinding:
    prefix: -bg
- id: pseudo
  doc: 'add <total pseudocounts> times letter background to each frequency; default:
    0'
  type: string
  inputBinding:
    prefix: -pseudo
- id: sg
  doc: 'specifify a file containing the contents of:  http://the_brain.bwh.harvard.edu/uniprobe/browse.php
    and use the uniprobe ID as the alternate name'
  type: string
  inputBinding:
    prefix: -sg
- id: log_odds
  doc: 'print log-odds matrix, too; default: print frequency matrix only'
  type: boolean
  inputBinding:
    prefix: -logodds
- id: url
  doc: 'website for the motif; The UNIPROBE ID is substituted for MOTIF_NAME; default:
    no url'
  type: string
  inputBinding:
    prefix: -url
outputs: []
cwlVersion: v1.1
baseCommand:
- beeml2meme
