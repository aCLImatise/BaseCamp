class: CommandLineTool
id: extractBCITrees_random seed_BCI threshold_max output trees.cwl
inputs:
- id: mr_bayestrprobsinputfile1n
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: nexus_output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- extractBCITrees
- random seed
- BCI threshold
- max output trees
