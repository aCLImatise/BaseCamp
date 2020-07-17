class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/dna_mutation_organism.cwl
inputs:
- id: dna_mutation
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: blastn
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: mutation
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: organism
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- dna_mutation
- organism
