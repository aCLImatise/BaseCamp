class: CommandLineTool
id: biasaway_g.cwl
inputs:
- id: bg_directory
  doc: Background directory
  type: string
  inputBinding:
    prefix: --bgdirectory
- id: background
  doc: Background file in fasta format
  type: string
  inputBinding:
    prefix: --background
- id: foreground
  doc: Foreground file in fasta format
  type: string
  inputBinding:
    prefix: --foreground
- id: n_fold
  doc: 'How many background sequences per each foreground sequence will be choosen
    (default: 1)'
  type: string
  inputBinding:
    prefix: --nfold
- id: length
  doc: Try to match the length as closely as possible (not set by default)
  type: boolean
  inputBinding:
    prefix: --length
- id: plot_filename
  doc: 'Output directory where the plots will be stored (default: no plot created)'
  type: string
  inputBinding:
    prefix: --plot_filename
outputs: []
cwlVersion: v1.1
baseCommand:
- biasaway
- g
