class: CommandLineTool
id: ../../../dna_mutation_blastn_mutation.cwl
inputs:
- id: organism
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- dna_mutation
- blastn
- mutation
