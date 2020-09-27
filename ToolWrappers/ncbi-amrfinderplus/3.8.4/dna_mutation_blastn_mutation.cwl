class: CommandLineTool
id: dna_mutation_blastn_mutation.cwl
inputs:
- id: in_organism
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dna_mutation
- blastn
- mutation
