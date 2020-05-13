class: CommandLineTool
id: MergeContigs.cwl
inputs:
- id: fast_a
  doc: contigs in FASTA format
  type: string
  inputBinding:
    position: 0
- id: overlap
  doc: contig overlap graph
  type: string
  inputBinding:
    position: 1
- id: path
  doc: sequences of contig IDs
  type: File
  inputBinding:
    position: 2
- id: km_er
  doc: k-mer size
  type: string
  inputBinding:
    prefix: --kmer
- id: out
  doc: output the merged contigs to FILE [stdout]
  type: File
  inputBinding:
    prefix: --out
- id: graph
  doc: write the contig overlap graph to FILE
  type: File
  inputBinding:
    prefix: --graph
- id: merged
  doc: output only merged contigs
  type: boolean
  inputBinding:
    prefix: --merged
- id: adj
  doc: output the graph in adj format
  type: boolean
  inputBinding:
    prefix: --adj
- id: dot
  doc: output the graph in dot format [default]
  type: boolean
  inputBinding:
    prefix: --dot
- id: dot_mean_cov
  doc: same as above but give the mean coverage
  type: boolean
  inputBinding:
    prefix: --dot-meancov
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
- MergeContigs
