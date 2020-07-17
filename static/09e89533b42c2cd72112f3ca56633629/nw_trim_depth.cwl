class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/nw_trim_depth.cwl
inputs:
- id: maximum_depth_expressed
  doc: ': the maximum depth is expressed in number of ancestors, not distance. Nodes
    are not shortened, but no node is retained that has more ancestors than the maximum.'
  type: boolean
  inputBinding:
    prefix: -a
outputs: []
cwlVersion: v1.1
baseCommand:
- nw_trim
- depth
