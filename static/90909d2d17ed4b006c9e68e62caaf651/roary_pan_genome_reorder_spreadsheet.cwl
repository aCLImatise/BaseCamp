class: CommandLineTool
id: roary_pan_genome_reorder_spreadsheet.cwl
inputs:
- id: pan_genome_reorder_spreadsheet
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: t
  doc: tree filename []
  type: string
  inputBinding:
    prefix: -t
- id: o
  doc: output filename [reordered_spreadsheet.csv]
  type: string
  inputBinding:
    prefix: -o
- id: f
  doc: tree format (newick/nexus/nhx/svggraph/tabtree/lintree) [newick]
  type: string
  inputBinding:
    prefix: -f
- id: s
  doc: input gene presence and absence spreadsheet [gene_presence_absence.csv]
  type: string
  inputBinding:
    prefix: -s
- id: a
  doc: search strategy (depth/breadth) [depth]
  type: string
  inputBinding:
    prefix: -a
- id: b
  doc: sorting method (height/creation/alpha/revalpha) [height]
  type: string
  inputBinding:
    prefix: -b
- id: v
  doc: verbose output to STDOUT
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- roary-pan_genome_reorder_spreadsheet
