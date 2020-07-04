class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/roary_pan_genome_reorder_spreadsheet.cwl
inputs:
- id: tree_filename
  doc: tree filename []
  type: string
  inputBinding:
    prefix: -t
- id: output_filename
  doc: output filename [reordered_spreadsheet.csv]
  type: string
  inputBinding:
    prefix: -o
- id: tree_format_newicknexusnhxsvggraphtabtreelintree
  doc: tree format (newick/nexus/nhx/svggraph/tabtree/lintree) [newick]
  type: string
  inputBinding:
    prefix: -f
- id: input_gene_presence
  doc: input gene presence and absence spreadsheet [gene_presence_absence.csv]
  type: string
  inputBinding:
    prefix: -s
- id: search_strategy_depthbreadth
  doc: search strategy (depth/breadth) [depth]
  type: string
  inputBinding:
    prefix: -a
- id: sorting_method_heightcreationalpharevalpha
  doc: sorting method (height/creation/alpha/revalpha) [height]
  type: string
  inputBinding:
    prefix: -b
- id: verbose_output_stdout
  doc: verbose output to STDOUT
  type: boolean
  inputBinding:
    prefix: -v
- id: pan_genome_reorder_spreadsheet
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- roary-pan_genome_reorder_spreadsheet
