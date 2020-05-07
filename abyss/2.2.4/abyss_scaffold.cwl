class: CommandLineTool
id: abyss_scaffold.cwl
inputs:
- id: fast_a
  doc: contigs in FASTA format
  type: string
  inputBinding:
    position: 0
- id: overlap
  doc: the contig overlap graph
  type: string
  inputBinding:
    position: 1
- id: dist
  doc: estimates of the distance between contigs
  type: string
  inputBinding:
    position: 2
- id: s
  doc: Find the value of n in [A,B] with step size S that maximizes the scaffold N50.
    Default value for the step size is 1, if unspecified.
  type: string
  inputBinding:
    position: 0
- id: seed_length
  doc: minimum contig length [1000]
  type: string
  inputBinding:
    prefix: --seed-length
- id: grid
  doc: optimize using a grid search [default]
  type: boolean
  inputBinding:
    prefix: --grid
- id: line
  doc: optimize using a line search
  type: boolean
  inputBinding:
    prefix: --line
- id: km_er
  doc: length of a k-mer
  type: string
  inputBinding:
    prefix: --kmer
- id: genome_size
  doc: expected genome size. Used to calculate NG50 and associated stats [disabled]
  type: string
  inputBinding:
    prefix: --genome-size
- id: min_gap
  doc: minimum scaffold gap length to output [50]
  type: string
  inputBinding:
    prefix: --min-gap
- id: max_gap
  doc: maximum scaffold gap length to output [inf]
  type: string
  inputBinding:
    prefix: --max-gap
- id: complex
  doc: remove complex transitive edges
  type: boolean
  inputBinding:
    prefix: --complex
- id: no_complex
  doc: don't remove complex transitive edges [default]
  type: boolean
  inputBinding:
    prefix: --no-complex
- id: ss
  doc: expect contigs to be oriented correctly
  type: boolean
  inputBinding:
    prefix: --SS
- id: no_ss
  doc: no assumption about contig orientation [default]
  type: boolean
  inputBinding:
    prefix: --no-SS
- id: out
  doc: write the paths to FILE
  type: File
  inputBinding:
    prefix: --out
- id: graph
  doc: write the graph to FILE
  type: File
  inputBinding:
    prefix: --graph
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
- abyss-scaffold
