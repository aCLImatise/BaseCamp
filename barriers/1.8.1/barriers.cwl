#!/usr/bin/env cwl-runner

baseCommand:
- barriers
class: CommandLineTool
cwlVersion: v1.0
id: barriers
inputs:
- doc: Print help, including all details and hidden options, and exit
  id: detailed_help
  inputBinding:
    prefix: --detailed-help
  type: boolean
- doc: Print help, including hidden options, and exit
  id: full_help
  inputBinding:
    prefix: --full-help
  type: boolean
- doc: Be verbose, i.e. print more information. (default=off)
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Be quiet (also inhibit PS tree output). (default=off)
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: Define type of the graph, i.e. configuration space.  (default=`RNA')
  id: graph
  inputBinding:
    prefix: --graph
  type: string
- doc: Select the move-set for generating neighbors of a configuration (if Graph allows
    several different ones).
  id: moves
  inputBinding:
    prefix: --moves
  type: string
- doc: Restrict the output to the connected component. (default=off)
  id: connected
  inputBinding:
    prefix: --connected
  type: boolean
- doc: Print the size of of each basin in output. (default=off)
  id: b_size
  inputBinding:
    prefix: --bsize
  type: boolean
- doc: Print saddle component sizes.  (default=off)
  id: s_size
  inputBinding:
    prefix: --ssize
  type: boolean
- doc: Compute only the lowest <num> local minima. (default=`100')
  id: max
  inputBinding:
    prefix: --max
  type: long
- doc: Print only minima with energy barrier greater than delta.  (default=`0.000001')
  id: minh
  inputBinding:
    prefix: --minh
  type: string
- doc: Print the saddle point conformations in output. (default=off)
  id: saddle
  inputBinding:
    prefix: --saddle
  type: boolean
- doc: Compute rates between macro states (basins). (default=off)
  id: rates
  inputBinding:
    prefix: --rates
  type: boolean
- doc: =<l2>          Backtrack an optimal path between local minimum l2 and l1.
  id: path
  inputBinding:
    prefix: --path
  type: string
- doc: Map conformations to minima in the tree.
  id: map_struc
  inputBinding:
    prefix: --mapstruc
  type: File
