class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/glimmhmm.pl.cwl
inputs:
- id: glimmer_hmm_program
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: train_dir
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- glimmhmm.pl
