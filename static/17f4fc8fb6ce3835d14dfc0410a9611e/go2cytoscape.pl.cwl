class: CommandLineTool
id: go2cytoscape.pl.cwl
inputs:
- id: in_gotwocytosapedotpl
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_output_prefix
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_homer_go_results_file
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: in_organism
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- go2cytoscape.pl
