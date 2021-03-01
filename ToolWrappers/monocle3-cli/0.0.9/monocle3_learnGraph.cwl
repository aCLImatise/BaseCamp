class: CommandLineTool
id: monocle3_learnGraph.cwl
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
- id: in_no_partition
  doc: When this option is set, learn a single tree structure for all the partitions.
    If not set, use the partitions calculated when clustering and identify disjoint
    graphs in each.
  type: boolean?
  inputBinding:
    prefix: --no-partition
- id: in_no_close_loop
  doc: When this option is set, skip the additional run of loop closing after computing
    the principal graphs to identify potential loop structure in the data space.
  type: boolean?
  inputBinding:
    prefix: --no-close-loop
- id: in_euclidean_distance_ratio
  doc: 'The maximal ratio between the euclidean distance of two tip nodes in the spanning
    tree inferred from SimplePPT algorithm and that of the maximum distance between
    any connecting points on the spanning tree allowed to be connected during the
    loop closure procedure. [Default: 1]'
  type: double?
  inputBinding:
    prefix: --euclidean-distance-ratio
- id: in_geodesic_distance_ratio
  doc: The minimal ratio between the geodestic distance of two tip nodes in the spanning
    tree inferred from SimplePPT algorithm and that of the length of the diameter
    path on the spanning tree allowed to be connected during the loop closure procedure.
    (Both euclidean_distance_ratio and geodestic_distance_ratio need to be satisfied
    to introduce the edge for loop closure.)
  type: double?
  inputBinding:
    prefix: --geodesic-distance-ratio
- id: in_no_prune_graph
  doc: When this option is set, perform an additional run of graph pruning to remove
    smaller insignificant branches.
  type: boolean?
  inputBinding:
    prefix: --no-prune-graph
- id: in_minimal_branch_len
  doc: 'The minimal length of the diameter path for a branch to be preserved during
    graph pruning procedure. [Default: 10]'
  type: long?
  inputBinding:
    prefix: --minimal-branch-len
- id: in_orthogonal_proj_tip
  doc: When this option is set, perform orthogonal projection for cells corresponding
    to the tip principal points.
  type: boolean?
  inputBinding:
    prefix: --orthogonal-proj-tip
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
- learnGraph
