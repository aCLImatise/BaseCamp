class: CommandLineTool
id: ../../../go2cytoscape.pl.cwl
inputs:
- id: gotwocytosapedotpl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_prefix
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: homer_go_results_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: organism
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- go2cytoscape.pl
