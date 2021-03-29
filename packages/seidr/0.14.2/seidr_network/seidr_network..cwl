class: CommandLineTool
id: seidr_network..cwl
inputs:
- id: in_import
  doc: Convert network text files to SeidrFiles.
  type: string
  inputBinding:
    position: 0
- id: in_aggregate
  doc: Aggregate a set of SeidrFiles into a crowd
  type: string
  inputBinding:
    position: 1
- id: in_network_dot
  doc: '[Filter, threshold or search SeidrFiles]'
  type: string
  inputBinding:
    position: 2
- id: in_backbone
  doc: "Calculate network backbone and filter edges\nbased on noise corrected backbone\
    \ measure."
  type: string
  inputBinding:
    position: 3
- id: in_index
  doc: Create index for SeidrFiles.
  type: string
  inputBinding:
    position: 4
- id: in_neighbours
  doc: "Extract N first degree neighbours of all nodes\nor a list of nodes in a SeidrFile."
  type: string
  inputBinding:
    position: 5
- id: in_sample
  doc: Sample random edges from a SeidrFile.
  type: string
  inputBinding:
    position: 6
- id: in_threshold
  doc: "Calculate network threshold based on scale\nfree fit and transitivity."
  type: string
  inputBinding:
    position: 7
- id: in_view
  doc: View, filter or search SeidrFiles.
  type: string
  inputBinding:
    position: 8
- id: in_stats
  doc: Compute node and edge centrality
  type: string
  inputBinding:
    position: 0
- id: in_graph_stats
  doc: Calculate summary statistics of the network
  type: string
  inputBinding:
    position: 1
- id: in_adjacency
  doc: Convert a SeidrFile to an adjacency
  type: string
  inputBinding:
    position: 0
- id: in_matrix_dot
  doc: convert                        Interconvert various text based formats.
  type: string
  inputBinding:
    position: 1
- id: in_resolve
  doc: Convert node indices in text file to node
  type: string
  inputBinding:
    position: 2
- id: in_names_dot
  doc: '[Compare networks]'
  type: string
  inputBinding:
    position: 3
- id: in_cluster_enrichment
  doc: "Test wether members of clusters in two\nnetworks overlap significantly or\
    \ extract\nclusters."
  type: string
  inputBinding:
    position: 4
- id: in_compare
  doc: Compare two networks for shared/unique
  type: string
  inputBinding:
    position: 5
- id: in_edges_dot
  doc: '[Evaluate networks]'
  type: string
  inputBinding:
    position: 6
- id: in_roc
  doc: "Compute ROC curves of predictions in \nSeidrFiles given true edges."
  type: string
  inputBinding:
    position: 7
- id: in_re_header
  doc: Modify SeidrFile headers.
  type: string
  inputBinding:
    position: 0
- id: in_version
  doc: Print version.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/seidr:0.14.2--mpi_mpich_h6f92565
cwlVersion: v1.1
baseCommand:
- seidr
- network.
