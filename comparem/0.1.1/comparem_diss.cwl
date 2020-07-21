class: CommandLineTool
id: ../../../comparem_diss.cwl
inputs:
- id: metric
  doc: 'distance metric to use (default: euclidean)'
  type: string
  inputBinding:
    prefix: --metric
- id: full_matrix
  doc: output full dissimilarity matrix
  type: boolean
  inputBinding:
    prefix: --full_matrix
- id: silent
  doc: suppress output
  type: boolean
  inputBinding:
    prefix: --silent
- id: profile_file
  doc: file with usage profile for each genome
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: output file with pairwise dissimilarity between genomes
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- comparem
- diss
