class: CommandLineTool
id: cds_mapping_stats.cwl
inputs:
- id: k
  doc: k-mer length to use
  type: string
  inputBinding:
    prefix: -k
- id: graph
  doc: In GFA (ending with .gfa) or prefix to SPAdes graph pack
  type: string
  inputBinding:
    prefix: --graph
- id: cds_queries
  doc: Path to FASTA file with ground truth CDS sequences
  type: File
  inputBinding:
    prefix: --cds-queries
- id: paths
  doc: Destination for outputting paths corresponding to CDS sequences
  type: File
  inputBinding:
    prefix: --paths
- id: edge_info
  doc: Destination for outputting edge usage information
  type: File
  inputBinding:
    prefix: --edge-info
- id: threads
  doc: '# of threads to use (default: max_threads / 2)'
  type: string
  inputBinding:
    prefix: --threads
- id: colors
  doc: Destination for outputting edge coloring to be displayed in Bandage
  type: File
  inputBinding:
    prefix: --colors
- id: workdir
  doc: 'scratch directory to use (default: ./tmp)'
  type: string
  inputBinding:
    prefix: --workdir
outputs: []
cwlVersion: v1.1
baseCommand:
- cds-mapping-stats
