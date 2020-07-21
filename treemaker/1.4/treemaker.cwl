class: CommandLineTool
id: ../../../treemaker.cwl
inputs:
- id: output
  doc: output file
  type: string
  inputBinding:
    prefix: --output
- id: mode
  doc: 'output mode: nexus or newick'
  type: string
  inputBinding:
    prefix: --mode
- id: labels
  doc: show node labels
  type: boolean
  inputBinding:
    prefix: --labels
- id: input
  doc: inputfile
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- treemaker
