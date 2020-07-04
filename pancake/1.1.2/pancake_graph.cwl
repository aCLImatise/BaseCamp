class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pancake_graph.cwl
inputs:
- id: pan_file
  doc: Name of PanCake Data Object File (required)
  type: string
  inputBinding:
    prefix: --panfile
- id: chrom_s
  doc: Chromosomes in Output (by default all chromosomes covered in PAN_FILE)
  type: string[]
  inputBinding:
    prefix: --chroms
- id: starts
  doc: Start positions (in same order as chromosomes), DEFAULT=1 on all chromosomes
  type: string[]
  inputBinding:
    prefix: -starts
- id: stops
  doc: Stop positions (in same order as chromosomes), DEFAULT=length of chromosomes
  type: string[]
  inputBinding:
    prefix: -stops
- id: max_nodes
  doc: 'Maximal number of nodes in output graph. (DEFAULT=10,000): if exceeded, PanCake
    will warn and interrupt!'
  type: long
  inputBinding:
    prefix: --max_nodes
- id: max_edges
  doc: 'Maximal number of edges in output graph. (DEFAULT=10,000): if exceeded, PanCake
    will warn and interrupt!'
  type: long
  inputBinding:
    prefix: --max_edges
- id: max_entries
  doc: 'Shared features are truncated in output if number of contained feature instances
    > MAX_ENTRIES (DEFAULT: MAX_ENTRIES=50)'
  type: long
  inputBinding:
    prefix: --max_entries
- id: all
  doc: if set, all chromosomes contained in PAN_FILE appear in output (irrespective
    to CHROMS), DEFAULT=False
  type: boolean
  inputBinding:
    prefix: -all
- id: regions
  doc: if set, only specified regions are shown in output (DEFAULT=False), ignored
    if -all is set
  type: boolean
  inputBinding:
    prefix: -regions
- id: output
  doc: 'output DOT file (DEFAULT: STDOUT)'
  type: File
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- pancake
- graph
