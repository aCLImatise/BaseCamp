class: CommandLineTool
id: graph_plot.py.cwl
inputs:
- id: in_swarms
  doc: <FILENAME> contains swarm's results
  type: File?
  inputBinding:
    prefix: --swarms
- id: in_internal_structure
  doc: <FILENAME> contains OTUs' internal structure
  type: File?
  inputBinding:
    prefix: --internal_structure
- id: in_otu
  doc: Select the nth OTU (first by default)
  type: long?
  inputBinding:
    prefix: --OTU
- id: in_drop
  doc: "Drop amplicons seen <INTEGER> or less times\n(zero by default)\n"
  type: long?
  inputBinding:
    prefix: --drop
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- graph_plot.py
