class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/glimmerhmm.cwl
inputs:
- id: genome_one_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: training_dir_for_genome_one
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- glimmerhmm
