class: CommandLineTool
id: gimme_location.cwl
inputs:
- id: pfm_file
  doc: File with pfms
  type: string
  inputBinding:
    position: 0
- id: f_a_file
  doc: Fasta formatted file
  type: string
  inputBinding:
    position: 1
- id: s
  doc: 'Set size to W (default: determined from fastafile)'
  type: long
  inputBinding:
    prefix: -s
- id: i
  doc: Comma-separated list of motif ids to plot (default is all ids)
  type: string
  inputBinding:
    prefix: -i
- id: c
  doc: Cutoff for motif scanning (default 0.95)
  type: string
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- gimme
- location
