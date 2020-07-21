class: CommandLineTool
id: ../../../PATHOGIST_consensus.cwl
inputs:
- id: all_constraints
  doc: add all constraints to the optimization problem, not just those with mixed
    signs.
  type: boolean
  inputBinding:
    prefix: --all_constraints
- id: method
  doc: Method for consensus clustering
  type: string
  inputBinding:
    prefix: --method
- id: distance_matrices
  doc: path to file containing paths to distance matrices for different clusterings
  type: string
  inputBinding:
    position: 0
- id: clusterings
  doc: path to file containing paths to clusterings, represented as either matrices
    or lists of clustering assignments
  type: string
  inputBinding:
    position: 1
- id: fine_clusterings
  doc: path to file containing the names of the clusterings which are the finest
  type: string
  inputBinding:
    position: 2
- id: output_path
  doc: path to output tsv file
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- PATHOGIST
- consensus
