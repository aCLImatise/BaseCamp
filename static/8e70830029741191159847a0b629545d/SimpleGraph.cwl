class: CommandLineTool
id: SimpleGraph.cwl
inputs:
- id: in_km_er
  doc: k-mer size
  type: long?
  inputBinding:
    prefix: --kmer
- id: in_dist_error
  doc: "acceptable error of a distance estimate\ndefault is 6 bp"
  type: long?
  inputBinding:
    prefix: --dist-error
- id: in_max_cost
  doc: maximum computational cost
  type: long?
  inputBinding:
    prefix: --max-cost
- id: in_out
  doc: write result to FILE
  type: File?
  inputBinding:
    prefix: --out
- id: in_threads
  doc: use THREADS parallel threads [1]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_extend
  doc: extend unambiguous paths
  type: boolean?
  inputBinding:
    prefix: --extend
- id: in_no_extend
  doc: do not extend unambiguous paths [default]
  type: boolean?
  inputBinding:
    prefix: --no-extend
- id: in_scaffold
  doc: join contigs with Ns [default]
  type: boolean?
  inputBinding:
    prefix: --scaffold
- id: in_no_scaffold
  doc: do not scaffold
  type: boolean?
  inputBinding:
    prefix: --no-scaffold
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
- id: in_adj
  doc: adjacency of the contigs
  type: string
  inputBinding:
    position: 0
- id: in_dist
  doc: distance estimates between the contigs
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- SimpleGraph
