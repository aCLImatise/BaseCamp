class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/transfac2meme.cwl
inputs:
- id: rna
  doc: output an RNA database instead of a DNA database.
  type: boolean
  inputBinding:
    prefix: -rna
- id: numbers
  doc: use numbers instead of strings as motif names
  type: boolean
  inputBinding:
    prefix: -numbers
- id: use_acc
  doc: use accession names ("AC") instead of IDs
  type: boolean
  inputBinding:
    prefix: -use_acc
- id: use_name
  doc: use names ("NA") instead of IDs
  type: boolean
  inputBinding:
    prefix: -use_name
- id: ids
  doc: keep any motifs listed in the file
  type: string
  inputBinding:
    prefix: -ids
- id: species
  doc: keep only motifs for this species
  type: string
  inputBinding:
    prefix: -species
- id: skip
  doc: skip this ID (may be repeated)
  type: string
  inputBinding:
    prefix: -skip
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
  doc: 'website for the motif; The ID (or accession) is substituted for MOTIF_NAME,
    the accession is substituted for MOTIF_AC and the  motif ID is substituted for
    MOTIF_ID; default: no url'
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
- transfac2meme
