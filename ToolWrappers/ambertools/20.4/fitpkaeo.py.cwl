class: CommandLineTool
id: fitpkaeo.py.cwl
inputs:
- id: in_author
  doc: show the program's author name and exit
  type: boolean
  inputBinding:
    prefix: --author
- id: in_verbose
  doc: "If stated, prints verbose showing initial and final\nvalues of X2. Default:\
    \ False"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_graph
  doc: 'If stated, generates a plot of the fitted curve. Default:'
  type: boolean
  inputBinding:
    prefix: --graph
- id: in_false
  doc: '--graph-path FILE  Path to save the graph. Default: ./graph.png'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fitpkaeo.py
