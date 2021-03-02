class: CommandLineTool
id: abyss_filtergraph.cwl
inputs:
- id: in_km_er
  doc: k-mer size
  type: long?
  inputBinding:
    prefix: --kmer
- id: in_ss
  doc: expect contigs to be oriented correctly
  type: boolean?
  inputBinding:
    prefix: --SS
- id: in_no_ss
  doc: no assumption about contig orientation
  type: boolean?
  inputBinding:
    prefix: --no-SS
- id: in_island
  doc: remove islands shorter than N [0]
  type: long?
  inputBinding:
    prefix: --island
- id: in_tip
  doc: remove tips shorter than N [0]
  type: long?
  inputBinding:
    prefix: --tip
- id: in_length
  doc: remove contigs shorter than N [0]
  type: long?
  inputBinding:
    prefix: --length
- id: in_max_length
  doc: remove contigs longer than N [0]
  type: long?
  inputBinding:
    prefix: --max-length
- id: in_coverage
  doc: remove contigs with mean k-mer coverage less than FLOAT [0]
  type: double?
  inputBinding:
    prefix: --coverage
- id: in_max_coverage
  doc: remove contigs with mean k-mer coverage at least FLOAT [0]
  type: double?
  inputBinding:
    prefix: --max-coverage
- id: in_shim
  doc: "remove filler contigs that only contribute\nto adjacency [default]"
  type: boolean?
  inputBinding:
    prefix: --shim
- id: in_no_shim
  doc: disable filler contigs removal
  type: boolean?
  inputBinding:
    prefix: --no-shim
- id: in_shim_max_degree
  doc: "only remove shims where the smaller of\nin/out degree is smaller than N [1]"
  type: long?
  inputBinding:
    prefix: --shim-max-degree
- id: in_min_overlap
  doc: require a minimum overlap of N bases [10]
  type: long?
  inputBinding:
    prefix: --min-overlap
- id: in_assemble
  doc: assemble unambiguous paths
  type: boolean?
  inputBinding:
    prefix: --assemble
- id: in_no_assemble
  doc: disable assembling of paths [default]
  type: boolean?
  inputBinding:
    prefix: --no-assemble
- id: in_graph
  doc: write the contig adjacency graph to FILE
  type: File?
  inputBinding:
    prefix: --graph
- id: in_ignore
  doc: ignore contigs seen in FILE
  type: File?
  inputBinding:
    prefix: --ignore
- id: in_remove
  doc: remove contigs seen in FILE
  type: File?
  inputBinding:
    prefix: --remove
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
- id: in_verbose
  doc: display verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_contig_adjacency_graph
  doc: contig adjacency graph
  type: string
  inputBinding:
    position: 0
- id: in_fast_a
  doc: contigs to check consistency of ADJ edges
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
- abyss-filtergraph
