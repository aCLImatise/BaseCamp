class: CommandLineTool
id: comparem_diss.cwl
inputs:
- id: in_metric
  doc: 'distance metric to use (default: euclidean)'
  type: string?
  inputBinding:
    prefix: --metric
- id: in_full_matrix
  doc: output full dissimilarity matrix
  type: boolean?
  inputBinding:
    prefix: --full_matrix
- id: in_silent
  doc: suppress output
  type: boolean?
  inputBinding:
    prefix: --silent
- id: in_profile_file
  doc: file with usage profile for each genome
  type: string
  inputBinding:
    position: 0
- id: in_output_file
  doc: output file with pairwise dissimilarity between
  type: string
  inputBinding:
    position: 1
- id: in_genomes
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- comparem
- diss
