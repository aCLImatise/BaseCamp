class: CommandLineTool
id: graph_plot.py.cwl
inputs:
- id: swarms
  doc: <FILENAME> contains swarm's results
  type: File
  inputBinding:
    prefix: --swarms
- id: internal_structure
  doc: <FILENAME> contains OTUs' internal structure
  type: File
  inputBinding:
    prefix: --internal_structure
- id: otu
  doc: Select the nth OTU (first by default)
  type: long
  inputBinding:
    prefix: --OTU
- id: drop
  doc: Drop amplicons seen <INTEGER> or less times (zero by default)
  type: long
  inputBinding:
    prefix: --drop
outputs: []
cwlVersion: v1.1
baseCommand:
- graph_plot.py
