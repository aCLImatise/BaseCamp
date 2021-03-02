class: CommandLineTool
id: roary_pan_genome_reorder_spreadsheet.cwl
inputs:
- id: in_tree_filename
  doc: tree filename []
  type: File?
  inputBinding:
    prefix: -t
- id: in_output_filename
  doc: output filename [reordered_spreadsheet.csv]
  type: File?
  inputBinding:
    prefix: -o
- id: in_tree_format_newicknexusnhxsvggraphtabtreelintree
  doc: tree format (newick/nexus/nhx/svggraph/tabtree/lintree) [newick]
  type: string?
  inputBinding:
    prefix: -f
- id: in_input_gene_presence
  doc: input gene presence and absence spreadsheet [gene_presence_absence.csv]
  type: string?
  inputBinding:
    prefix: -s
- id: in_search_strategy_depthbreadth
  doc: search strategy (depth/breadth) [depth]
  type: string?
  inputBinding:
    prefix: -a
- id: in_sorting_method_heightcreationalpharevalpha
  doc: sorting method (height/creation/alpha/revalpha) [height]
  type: string?
  inputBinding:
    prefix: -b
- id: in_verbose_output_stdout
  doc: verbose output to STDOUT
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_pan_genome_reorder_spreadsheet
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_filename
  doc: output filename [reordered_spreadsheet.csv]
  type: File?
  outputBinding:
    glob: $(inputs.in_output_filename)
hints: []
cwlVersion: v1.1
baseCommand:
- roary-pan_genome_reorder_spreadsheet
