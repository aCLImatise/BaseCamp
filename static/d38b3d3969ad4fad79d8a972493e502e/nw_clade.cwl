class: CommandLineTool
id: nw_clade.cwl
inputs:
- id: s
  doc: ': prints the siblings of the clade defined by the labels passed as arguments,
    in the order in which they appear in the Newick. If -m is also passed, only prints
    siblings if the labels passed as arguments form a monophyletic group.'
  type: boolean
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- nw_clade
