class: CommandLineTool
id: nw_trim_filename|_.cwl
inputs:
- id: in_maximum_depth_expressed
  doc: ": the maximum depth is expressed in number of ancestors, not distance.\nNodes\
    \ are not shortened, but no node is retained that has more\nancestors than the\
    \ maximum."
  type: boolean
  inputBinding:
    prefix: -a
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nw_trim
- filename|-
