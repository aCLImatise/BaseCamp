class: CommandLineTool
id: barriers.cwl
inputs:
- id: detailed_help
  doc: Print help, including all details and hidden options, and exit
  type: boolean
  inputBinding:
    prefix: --detailed-help
- id: full_help
  doc: Print help, including hidden options, and exit
  type: boolean
  inputBinding:
    prefix: --full-help
- id: verbose
  doc: Be verbose, i.e. print more information. (default=off)
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: Be quiet (also inhibit PS tree output). (default=off)
  type: boolean
  inputBinding:
    prefix: --quiet
- id: graph
  doc: Define type of the graph, i.e. configuration space.  (default=`RNA')
  type: string
  inputBinding:
    prefix: --graph
- id: moves
  doc: Select the move-set for generating neighbors of a configuration (if Graph allows
    several different ones).
  type: string
  inputBinding:
    prefix: --moves
- id: connected
  doc: Restrict the output to the connected component. (default=off)
  type: boolean
  inputBinding:
    prefix: --connected
- id: b_size
  doc: Print the size of of each basin in output. (default=off)
  type: boolean
  inputBinding:
    prefix: --bsize
- id: s_size
  doc: Print saddle component sizes.  (default=off)
  type: boolean
  inputBinding:
    prefix: --ssize
- id: max
  doc: Compute only the lowest <num> local minima. (default=`100')
  type: long
  inputBinding:
    prefix: --max
- id: minh
  doc: Print only minima with energy barrier greater than delta.  (default=`0.000001')
  type: string
  inputBinding:
    prefix: --minh
- id: saddle
  doc: Print the saddle point conformations in output. (default=off)
  type: boolean
  inputBinding:
    prefix: --saddle
- id: rates
  doc: Compute rates between macro states (basins). (default=off)
  type: boolean
  inputBinding:
    prefix: --rates
- id: path
  doc: =<l2>          Backtrack an optimal path between local minimum l2 and l1.
  type: string
  inputBinding:
    prefix: --path
- id: map_struc
  doc: Map conformations to minima in the tree.
  type: File
  inputBinding:
    prefix: --mapstruc
outputs: []
cwlVersion: v1.1
baseCommand:
- barriers
