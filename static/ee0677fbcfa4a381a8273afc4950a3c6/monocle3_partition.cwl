class: CommandLineTool
id: monocle3_partition.cwl
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
- id: in_reduction_method
  doc: 'The dimensionality reduction to base the clustering on, choose from {UMAP,
    tSNE, PCA, LSI}. [Default: UMAP]'
  type: string?
  inputBinding:
    prefix: --reduction-method
- id: in_knn
  doc: 'Number of nearest neighbours used for Louvain clustering. [Default: 20]'
  type: long?
  inputBinding:
    prefix: --knn
- id: in_weight
  doc: When this option is set, calculate the weight for each edge in the kNN graph.
  type: boolean?
  inputBinding:
    prefix: --weight
- id: in_louvain_iter
  doc: 'The number of iteration for Louvain clustering. [Default: 1]'
  type: long?
  inputBinding:
    prefix: --louvain-iter
- id: in_resolution
  doc: Resolution of clustering result, specifying the granularity of clusters. Not
    used by default and the standard igraph louvain clustering algorithm will be used.
  type: double?
  inputBinding:
    prefix: --resolution
- id: in_partition_q_val
  doc: 'The q-value threshold used to determine the partition of cells. [Default:
    0.05]'
  type: double?
  inputBinding:
    prefix: --partition-qval
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
- partition
