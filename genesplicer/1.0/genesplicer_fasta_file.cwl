class: CommandLineTool
id: genesplicer_fasta_file.cwl
inputs:
- id: specific_genome_training_directory
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- genesplicer
- fasta-file
