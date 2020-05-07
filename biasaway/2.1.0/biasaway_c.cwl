class: CommandLineTool
id: biasaway_c.cwl
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
- id: deviation
  doc: 'Deviation from the mean (default: 2.6 for a threshold of mean + 2.6 * stdev)'
  type: string
  inputBinding:
    prefix: --deviation
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
- c
