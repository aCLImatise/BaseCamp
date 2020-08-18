class: CommandLineTool
id: ../../../mp3treesim.cwl
inputs:
- id: run_mptreesim_intersection
  doc: Run MP3-treesim in Intersection mode.
  type: boolean
  inputBinding:
    prefix: -i
- id: run_mptreesim_union
  doc: Run MP3-treesim in Union mode.
  type: boolean
  inputBinding:
    prefix: -u
- id: run_mptreesim_geometric
  doc: Run MP3-treesim in Geometric mode.
  type: boolean
  inputBinding:
    prefix: -g
- id: tree
  doc: Paths to the trees
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mp3treesim
