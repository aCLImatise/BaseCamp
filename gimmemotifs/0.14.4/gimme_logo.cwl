class: CommandLineTool
id: ../../../gimme_logo.cwl
inputs:
- id: pfm_file
  doc: PFM file with motifs
  type: string
  inputBinding:
    prefix: --pfmfile
- id: ids
  doc: Comma-separated list of motif ids (default is all ids)
  type: string
  inputBinding:
    prefix: --ids
- id: kind
  doc: Type of motif (information, frequency, energy or ensembl)
  type: string
  inputBinding:
    prefix: --kind
- id: no_title
  doc: Don't include motif ID as title
  type: boolean
  inputBinding:
    prefix: --notitle
- id: h
  doc: ''
  type: boolean
  inputBinding:
    prefix: -h
- id: gimme
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: subcommand
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: logo
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- gimme
- logo
