class: CommandLineTool
id: ../../../cds_mapping_stats.cwl
inputs:
- id: in_kmer_length_use
  doc: k-mer length to use
  type: long
  inputBinding:
    prefix: -k
- id: in_graph
  doc: In GFA (ending with .gfa) or prefix to SPAdes graph pack
  type: string
  inputBinding:
    prefix: --graph
- id: in_cds_queries
  doc: Path to FASTA file with ground truth CDS sequences
  type: File
  inputBinding:
    prefix: --cds-queries
- id: in_paths
  doc: Destination for outputting paths corresponding to CDS sequences
  type: File
  inputBinding:
    prefix: --paths
- id: in_edge_info
  doc: Destination for outputting edge usage information
  type: File
  inputBinding:
    prefix: --edge-info
- id: in_threads
  doc: '# of threads to use (default: max_threads / 2)'
  type: long
  inputBinding:
    prefix: --threads
- id: in_colors
  doc: Destination for outputting edge coloring to be displayed in Bandage
  type: File
  inputBinding:
    prefix: --colors
- id: in_workdir
  doc: "scratch directory to use (default: ./tmp)\n"
  type: Directory
  inputBinding:
    prefix: --workdir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cds-mapping-stats
