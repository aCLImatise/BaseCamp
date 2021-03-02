class: CommandLineTool
id: monocle3_orderCells.cwl
inputs:
- id: in_input_object_format
  doc: 'Format of input object. [Default: cds3]'
  type: long?
  inputBinding:
    prefix: --input-object-format
- id: in_output_object_format
  doc: 'Format of output object. [Default: cds3]'
  type: long?
  inputBinding:
    prefix: --output-object-format
- id: in_introspective
  doc: Print introspective information of the output object.
  type: boolean?
  inputBinding:
    prefix: --introspective
- id: in_root_pr_nodes
  doc: "The starting principal points. We learn a principal graph that passes\nthrough\
    \ the middle of the data points and use it to represent the\ndevelopmental process.\
    \ Exclusive with --root-cells."
  type: string?
  inputBinding:
    prefix: --root-pr-nodes
- id: in_root_cells
  doc: The starting cells. Each cell corresponds to a principal point and multiple
    cells can correspond to the same principal point. Exclusive with --root-pr-nodes.
  type: string?
  inputBinding:
    prefix: --root-cells
- id: in_cell_phenotype
  doc: The cell phenotype (column in pdata) used to identify root principal nodes.
  type: string?
  inputBinding:
    prefix: --cell-phenotype
- id: in_root_type
  doc: The value of the phenotype specified by "--cell-pheontype" that defines cells
    root principal nodes.
  type: string?
  inputBinding:
    prefix: --root-type
- id: in_reduction_method
  doc: 'The dimensionality reduction that was used for clustering, choose from {UMAP,
    tSNE, PCA, LSI}. [Default: UMAP]'
  type: string?
  inputBinding:
    prefix: --reduction-method
- id: in_verbose
  doc: Emit verbose output.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_input_object
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_object
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- monocle3
- orderCells
