class: CommandLineTool
id: AdjList.cwl
inputs:
- id: km_er
  doc: the length of a k-mer (when -K is not set) or the span of a k-mer pair (when
    -K is set)
  type: string
  inputBinding:
    prefix: --kmer
- id: single_km_er
  doc: the length of a single k-mer in a k-mer pair
  type: string
  inputBinding:
    prefix: --single-kmer
- id: min_overlap
  doc: require a minimum overlap of M bases [50]
  type: string
  inputBinding:
    prefix: --min-overlap
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
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: db
  doc: specify path of database repository in FILE
  type: File
  inputBinding:
    prefix: --db
- id: library
  doc: specify library NAME for database
  type: string
  inputBinding:
    prefix: --library
- id: strain
  doc: specify strain NAME for database
  type: string
  inputBinding:
    prefix: --strain
- id: species
  doc: specify species NAME for database
  type: string
  inputBinding:
    prefix: --species
outputs: []
cwlVersion: v1.1
baseCommand:
- AdjList
