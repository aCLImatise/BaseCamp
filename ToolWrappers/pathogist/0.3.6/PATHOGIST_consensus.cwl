class: CommandLineTool
id: PATHOGIST_consensus.cwl
inputs:
- id: in_all_constraints
  doc: "add all constraints to the optimization problem, not\njust those with mixed\
    \ signs."
  type: boolean
  inputBinding:
    prefix: --all_constraints
- id: in_method
  doc: "Method for consensus clustering\n"
  type: string
  inputBinding:
    prefix: --method
- id: in_positional_arguments
  doc: 'positional arguments:'
  type: string
  inputBinding:
    position: 0
- id: in_distance_matrices
  doc: "path to file containing paths to distance matrices for\ndifferent clusterings"
  type: string
  inputBinding:
    position: 1
- id: in_clusterings
  doc: "path to file containing paths to clusterings,\nrepresented as either matrices\
    \ or lists of clustering\nassignments"
  type: string
  inputBinding:
    position: 2
- id: in_fine_clusterings
  doc: "path to file containing the names of the clusterings\nwhich are the finest"
  type: string
  inputBinding:
    position: 3
- id: in_path_output_tsv
  doc: path to output tsv file
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- PATHOGIST
- consensus
