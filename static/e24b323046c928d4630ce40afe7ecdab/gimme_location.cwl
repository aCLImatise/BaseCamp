class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gimme_location.cwl
inputs:
- id: set_size_w
  doc: 'Set size to W (default: determined from fastafile)'
  type: long
  inputBinding:
    prefix: -s
- id: commaseparated_list_plot
  doc: Comma-separated list of motif ids to plot (default is all ids)
  type: string
  inputBinding:
    prefix: -i
- id: cutoff_motif_scanning
  doc: Cutoff for motif scanning (default 0.95)
  type: string
  inputBinding:
    prefix: -c
- id: h
  doc: ''
  type: boolean
  inputBinding:
    prefix: -h
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
outputs: []
cwlVersion: v1.1
baseCommand:
- gimme
- location
