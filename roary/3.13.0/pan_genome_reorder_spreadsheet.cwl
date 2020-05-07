class: CommandLineTool
id: pan_genome_reorder_spreadsheet.cwl
inputs:
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
- pan_genome_reorder_spreadsheet
