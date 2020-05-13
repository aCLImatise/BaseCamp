class: CommandLineTool
id: PathConsensus.cwl
inputs:
- id: fast_a
  doc: contigs in FASTA format
  type: string
  inputBinding:
    position: 0
- id: adj
  doc: contig adjacency graph
  type: string
  inputBinding:
    position: 1
- id: path
  doc: paths of these contigs
  type: File
  inputBinding:
    position: 2
- id: km_er
  doc: k-mer size
  type: string
  inputBinding:
    prefix: --kmer
- id: dist_error
  doc: 'acceptable error of a distance estimate default: 6 bp'
  type: string
  inputBinding:
    prefix: --dist-error
- id: out
  doc: output contig paths to FILE
  type: File
  inputBinding:
    prefix: --out
- id: consensus
  doc: output consensus sequences to FILE
  type: File
  inputBinding:
    prefix: --consensus
- id: graph
  doc: output the contig adjacency graph to FILE
  type: File
  inputBinding:
    prefix: --graph
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
- id: branches
  doc: 'maximum number of sequences to align default: 4'
  type: string
  inputBinding:
    prefix: --branches
- id: identity
  doc: 'minimum identity, default: 0.9'
  type: string
  inputBinding:
    prefix: --identity
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
- id: di_align_d
  doc: 'dialign debug level, default: 0'
  type: string
  inputBinding:
    prefix: --dialign-d
- id: di_align_m
  doc: 'score matrix, default: dna_matrix.scr'
  type: File
  inputBinding:
    prefix: --dialign-m
- id: di_align_p
  doc: 'diagonal length probability distribution default: dna_diag_prob_100_exp_550000'
  type: File
  inputBinding:
    prefix: --dialign-p
outputs: []
cwlVersion: v1.1
baseCommand:
- PathConsensus
