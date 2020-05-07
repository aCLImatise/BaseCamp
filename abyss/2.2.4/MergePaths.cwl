class: CommandLineTool
id: MergePaths.cwl
inputs:
- id: len
  doc: lengths of the contigs
  type: string
  inputBinding:
    position: 0
- id: path
  doc: sequences of contig IDs
  type: File
  inputBinding:
    position: 1
- id: km_er
  doc: k-mer size
  type: string
  inputBinding:
    prefix: --kmer
- id: seed_length
  doc: minimum length of a seed contig [0]
  type: string
  inputBinding:
    prefix: --seed-length
- id: genome_size
  doc: expected genome size. Used to calculate NG50 and associated stats [disabled]
  type: string
  inputBinding:
    prefix: --genome-size
- id: out
  doc: write result to FILE
  type: File
  inputBinding:
    prefix: --out
- id: no_greedy
  doc: use the non-greedy algorithm [default]
  type: boolean
  inputBinding:
    prefix: --no-greedy
- id: greedy
  doc: use the greedy algorithm
  type: boolean
  inputBinding:
    prefix: --greedy
- id: graph
  doc: write the path overlap graph to FILE
  type: File
  inputBinding:
    prefix: --graph
- id: threads
  doc: use N parallel threads [1]
  type: string
  inputBinding:
    prefix: --threads
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
- MergePaths
