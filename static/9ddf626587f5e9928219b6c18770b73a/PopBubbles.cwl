class: CommandLineTool
id: PopBubbles.cwl
inputs:
- id: in_km_er
  doc: k-mer size
  type: long?
  inputBinding:
    prefix: --kmer
- id: in_branches
  doc: 'maximum number of branches, default: 2'
  type: long?
  inputBinding:
    prefix: --branches
- id: in_bubble_length
  doc: "pop bubbles shorter than N bp\ndefault is 10000"
  type: long?
  inputBinding:
    prefix: --bubble-length
- id: in_identity
  doc: 'minimum identity, default: 0.9'
  type: double?
  inputBinding:
    prefix: --identity
- id: in_coverage
  doc: "remove contigs with mean k-mer coverage\nless than this threshold [0]"
  type: long?
  inputBinding:
    prefix: --coverage
- id: in_scaffold
  doc: "scaffold over bubbles that have\ninsufficient identity"
  type: boolean?
  inputBinding:
    prefix: --scaffold
- id: in_no_scaffold
  doc: disable scaffolding [default]
  type: boolean?
  inputBinding:
    prefix: --no-scaffold
- id: in_ss
  doc: expect contigs to be oriented correctly
  type: boolean?
  inputBinding:
    prefix: --SS
- id: in_no_ss
  doc: no assumption about contig orientation [default]
  type: boolean?
  inputBinding:
    prefix: --no-SS
- id: in_graph
  doc: write the contig adjacency graph to FILE
  type: File?
  inputBinding:
    prefix: --graph
- id: in_output_graph_adj
  doc: output the graph in ADJ format [default]
  type: boolean?
  inputBinding:
    prefix: --adj
- id: in_as_qg
  doc: output the graph in ASQG format
  type: boolean?
  inputBinding:
    prefix: --asqg
- id: in_dot
  doc: output the graph in GraphViz format
  type: boolean?
  inputBinding:
    prefix: --dot
- id: in_gfa
  doc: output the graph in GFA1 format
  type: boolean?
  inputBinding:
    prefix: --gfa
- id: in_gfa_one
  doc: output the graph in GFA1 format
  type: boolean?
  inputBinding:
    prefix: --gfa1
- id: in_gfa_two
  doc: output the graph in GFA2 format
  type: boolean?
  inputBinding:
    prefix: --gfa2
- id: in_gv
  doc: output the graph in GraphViz format
  type: boolean?
  inputBinding:
    prefix: --gv
- id: in_sam
  doc: output the graph in SAM format
  type: boolean?
  inputBinding:
    prefix: --sam
- id: in_bubble_graph
  doc: output a graph of the bubbles
  type: boolean?
  inputBinding:
    prefix: --bubble-graph
- id: in_threads
  doc: use N parallel threads [1]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_verbose
  doc: display verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_fast_a
  doc: contigs in FASTA format
  type: string
  inputBinding:
    position: 0
- id: in_contig_adjacency_graph
  doc: contig adjacency graph
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/abyss:2.2.5--ha4ec83a_0
cwlVersion: v1.1
baseCommand:
- PopBubbles
