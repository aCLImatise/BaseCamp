class: CommandLineTool
id: glimmerhmm.cwl
inputs:
- id: genome_1_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: training_dir_for_genome_1
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- glimmerhmm
