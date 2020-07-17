class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/biasaway_d.cwl
inputs:
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
  doc: 'Basename for the plot files (default: no plot created)'
  type: string
  inputBinding:
    prefix: --plot_filename
outputs: []
cwlVersion: v1.1
baseCommand:
- biasaway
- d
