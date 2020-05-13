class: CommandLineTool
id: extractBCITrees_random seed_BCI threshold_nexus output file.cwl
inputs:
- id: max_output_trees
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: mr_bayestrprobsinputfile1n
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: nexus_output_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- extractBCITrees
- random seed
- BCI threshold
- nexus output file
