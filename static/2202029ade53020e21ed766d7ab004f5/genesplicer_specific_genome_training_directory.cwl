class: CommandLineTool
id: genesplicer_specific_genome_training_directory.cwl
inputs:
- id: fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: specific_genome_training_directory
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- genesplicer
- specific-genome-training-directory
