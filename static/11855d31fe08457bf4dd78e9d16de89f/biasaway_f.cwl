class: CommandLineTool
id: biasaway_f.cwl
inputs:
- id: win_len
  doc: 'Window length (default: 100)'
  type: string
  inputBinding:
    prefix: --winlen
- id: step
  doc: 'Sliding step (default: 1)'
  type: string
  inputBinding:
    prefix: --step
- id: foreground
  doc: Foreground file in fasta format
  type: string
  inputBinding:
    prefix: --foreground
- id: n_fold
  doc: 'How many background sequences per each foreground sequence will be generated
    (default: 1)'
  type: string
  inputBinding:
    prefix: --nfold
- id: plot_filename
  doc: 'Output directory where the plots will be stored (default: no plot created)'
  type: string
  inputBinding:
    prefix: --plot_filename
outputs: []
cwlVersion: v1.1
baseCommand:
- biasaway
- f
