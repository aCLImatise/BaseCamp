class: CommandLineTool
id: monocle3_diffExp.cwl
inputs:
- id: in_input_object_format
  doc: 'Format of input object. [Default: cds3]'
  type: long
  inputBinding:
    prefix: --input-object-format
- id: in_output_table_format
  doc: 'Format of output table, choose from {tsv, csv}. [Default: tsv]'
  type: string
  inputBinding:
    prefix: --output-table-format
- id: in_introspective
  doc: Print introspective information of the output table.
  type: boolean
  inputBinding:
    prefix: --introspective
- id: in_neighbor_graph
  doc: 'What neighbor graph to use, "principal_graph" recommended for trajectory analysis,
    choose from {principal_graph, knn}. [Default: knn]'
  type: string
  inputBinding:
    prefix: --neighbor-graph
- id: in_reduction_method
  doc: 'The dimensionality reduction to base the clustering on, choose from {UMAP}.
    [Default: UMAP]'
  type: string
  inputBinding:
    prefix: --reduction-method
- id: in_knn
  doc: Number of nearest neighbors used for building the kNN graph which is passed
    to knn2nb function during the Moran's I (Geary's C) test procedure.
  type: long
  inputBinding:
    prefix: --knn
- id: in_method
  doc: 'A character string specifying the method for detecting significant genes showing
    correlated expression along the principal graph embedded in the low dimensional
    space, choose from {Moran_I}. [Default: Moran_I]'
  type: string
  inputBinding:
    prefix: --method
- id: in_alternative
  doc: 'A character string specifying the alternative hypothesis, choose from {greater,
    less, two.sided}. [Default: greater]'
  type: string
  inputBinding:
    prefix: --alternative
- id: in_cores
  doc: 'The number of cores to be used while testing each gene for differential expression.
    [Default: 1]'
  type: long
  inputBinding:
    prefix: --cores
- id: in_verbose
  doc: Emit verbose output.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_input_object
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_table
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- monocle3
- diffExp
