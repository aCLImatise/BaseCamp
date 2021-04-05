class: CommandLineTool
id: PathOverlap.cwl
inputs:
- id: in_km_er
  doc: k-mer size
  type: long?
  inputBinding:
    prefix: --kmer
- id: in_graph
  doc: write the contig adjacency graph to FILE
  type: File?
  inputBinding:
    prefix: --graph
- id: in_repeats
  doc: write repeat contigs to FILE
  type: File?
  inputBinding:
    prefix: --repeats
- id: in_overlap
  doc: find overlapping paths [default]
  type: boolean?
  inputBinding:
    prefix: --overlap
- id: in_assemble
  doc: assemble overlapping paths
  type: boolean?
  inputBinding:
    prefix: --assemble
- id: in_trim
  doc: trim overlapping paths
  type: boolean?
  inputBinding:
    prefix: --trim
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
- id: in_verbose
  doc: display verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_db
  doc: specify path of database repository in FILE
  type: File?
  inputBinding:
    prefix: --db
- id: in_library
  doc: specify library NAME for sqlite
  type: string?
  inputBinding:
    prefix: --library
- id: in_strain
  doc: specify strain NAME for sqlite
  type: string?
  inputBinding:
    prefix: --strain
- id: in_species
  doc: specify species NAME for sqlite
  type: string?
  inputBinding:
    prefix: --species
- id: in_contig_adjacency_graph
  doc: contig adjacency graph
  type: string
  inputBinding:
    position: 0
- id: in_path
  doc: sequences of contig IDs
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/abyss:2.3.0--ha4ec83a_0
cwlVersion: v1.1
baseCommand:
- PathOverlap
