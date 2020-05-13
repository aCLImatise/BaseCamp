class: CommandLineTool
id: abyss_filtergraph.cwl
inputs:
- id: adj
  doc: contig adjacency graph
  type: string
  inputBinding:
    position: 0
- id: fast_a
  doc: contigs to check consistency of ADJ edges
  type: string
  inputBinding:
    position: 1
- id: km_er
  doc: k-mer size
  type: string
  inputBinding:
    prefix: --kmer
- id: ss
  doc: expect contigs to be oriented correctly
  type: boolean
  inputBinding:
    prefix: --SS
- id: no_ss
  doc: no assumption about contig orientation
  type: boolean
  inputBinding:
    prefix: --no-SS
- id: island
  doc: remove islands shorter than N [0]
  type: string
  inputBinding:
    prefix: --island
- id: tip
  doc: remove tips shorter than N [0]
  type: string
  inputBinding:
    prefix: --tip
- id: length
  doc: remove contigs shorter than N [0]
  type: string
  inputBinding:
    prefix: --length
- id: max_length
  doc: remove contigs longer than N [0]
  type: string
  inputBinding:
    prefix: --max-length
- id: coverage
  doc: remove contigs with mean k-mer coverage less than FLOAT [0]
  type: double
  inputBinding:
    prefix: --coverage
- id: max_coverage
  doc: remove contigs with mean k-mer coverage at least FLOAT [0]
  type: double
  inputBinding:
    prefix: --max-coverage
- id: shim
  doc: remove filler contigs that only contribute to adjacency [default]
  type: boolean
  inputBinding:
    prefix: --shim
- id: no_shim
  doc: disable filler contigs removal
  type: boolean
  inputBinding:
    prefix: --no-shim
- id: shim_max_degree
  doc: only remove shims where the smaller of  in/out degree is smaller than N [1]
  type: string
  inputBinding:
    prefix: --shim-max-degree
- id: min_overlap
  doc: require a minimum overlap of N bases [10]
  type: string
  inputBinding:
    prefix: --min-overlap
- id: assemble
  doc: assemble unambiguous paths
  type: boolean
  inputBinding:
    prefix: --assemble
- id: no_assemble
  doc: disable assembling of paths [default]
  type: boolean
  inputBinding:
    prefix: --no-assemble
- id: graph
  doc: write the contig adjacency graph to FILE
  type: File
  inputBinding:
    prefix: --graph
- id: ignore
  doc: ignore contigs seen in FILE
  type: File
  inputBinding:
    prefix: --ignore
- id: remove
  doc: remove contigs seen in FILE
  type: File
  inputBinding:
    prefix: --remove
- id: adj
  doc: output the graph in ADJ format [default]
  type: boolean
  inputBinding:
    prefix: --adj
- id: as_qg
  doc: output the graph in ASQG format
  type: boolean
  inputBinding:
    prefix: --asqg
- id: dot
  doc: output the graph in GraphViz format
  type: boolean
  inputBinding:
    prefix: --dot
- id: gfa
  doc: output the graph in GFA1 format
  type: boolean
  inputBinding:
    prefix: --gfa
- id: gfa1
  doc: output the graph in GFA1 format
  type: boolean
  inputBinding:
    prefix: --gfa1
- id: gfa2
  doc: output the graph in GFA2 format
  type: boolean
  inputBinding:
    prefix: --gfa2
- id: gv
  doc: output the graph in GraphViz format
  type: boolean
  inputBinding:
    prefix: --gv
- id: sam
  doc: output the graph in SAM format
  type: boolean
  inputBinding:
    prefix: --sam
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- abyss-filtergraph
