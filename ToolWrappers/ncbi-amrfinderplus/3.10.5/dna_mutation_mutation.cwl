class: CommandLineTool
id: dna_mutation_mutation.cwl
inputs:
- id: in_dna_mutation
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_blastn
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_mutation
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_organism
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ncbi-amrfinderplus:3.10.5--h17dc2d4_0
cwlVersion: v1.1
baseCommand:
- dna_mutation
- mutation
