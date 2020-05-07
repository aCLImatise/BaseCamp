class: CommandLineTool
id: SimpleGraph.cwl
inputs:
- id: adj
  doc: adjacency of the contigs
  type: string
  inputBinding:
    position: 0
- id: dist
  doc: distance estimates between the contigs
  type: string
  inputBinding:
    position: 1
- id: km_er
  doc: k-mer size
  type: string
  inputBinding:
    prefix: --kmer
- id: n_pairs
  doc: minimum number of pairs [0]
  type: string
  inputBinding:
    prefix: --npairs
- id: seed_length
  doc: minimum seed contig length [0]
  type: string
  inputBinding:
    prefix: --seed-length
- id: dist_error
  doc: acceptable error of a distance estimate default is 6 bp
  type: string
  inputBinding:
    prefix: --dist-error
- id: max_cost
  doc: maximum computational cost
  type: string
  inputBinding:
    prefix: --max-cost
- id: out
  doc: write result to FILE
  type: File
  inputBinding:
    prefix: --out
- id: threads
  doc: use THREADS parallel threads [1]
  type: string
  inputBinding:
    prefix: --threads
- id: extend
  doc: extend unambiguous paths
  type: boolean
  inputBinding:
    prefix: --extend
- id: no_extend
  doc: do not extend unambiguous paths [default]
  type: boolean
  inputBinding:
    prefix: --no-extend
- id: scaffold
  doc: join contigs with Ns [default]
  type: boolean
  inputBinding:
    prefix: --scaffold
- id: no_scaffold
  doc: do not scaffold
  type: boolean
  inputBinding:
    prefix: --no-scaffold
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
  doc: specify library NAME for sqlite
  type: string
  inputBinding:
    prefix: --library
- id: strain
  doc: specify strain NAME for sqlite
  type: string
  inputBinding:
    prefix: --strain
- id: species
  doc: specify species NAME for sqlite
  type: string
  inputBinding:
    prefix: --species
outputs: []
cwlVersion: v1.1
baseCommand:
- SimpleGraph
