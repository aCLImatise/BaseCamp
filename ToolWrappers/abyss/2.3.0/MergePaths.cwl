class: CommandLineTool
id: MergePaths.cwl
inputs:
- id: in_km_er
  doc: k-mer size
  type: long?
  inputBinding:
    prefix: --kmer
- id: in_seed_length
  doc: minimum length of a seed contig [0]
  type: long?
  inputBinding:
    prefix: --seed-length
- id: in_genome_size
  doc: "expected genome size. Used to calculate NG50\nand associated stats [disabled]"
  type: long?
  inputBinding:
    prefix: --genome-size
- id: in_out
  doc: write result to FILE
  type: File?
  inputBinding:
    prefix: --out
- id: in_no_greedy
  doc: use the non-greedy algorithm [default]
  type: boolean?
  inputBinding:
    prefix: --no-greedy
- id: in_greedy
  doc: use the greedy algorithm
  type: boolean?
  inputBinding:
    prefix: --greedy
- id: in_graph
  doc: write the path overlap graph to FILE
  type: File?
  inputBinding:
    prefix: --graph
- id: in_threads
  doc: use N parallel threads [1]
  type: long?
  inputBinding:
    prefix: --threads
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
  doc: specify library NAME for database
  type: string?
  inputBinding:
    prefix: --library
- id: in_strain
  doc: specify strain NAME for database
  type: string?
  inputBinding:
    prefix: --strain
- id: in_species
  doc: specify species NAME for database
  type: string?
  inputBinding:
    prefix: --species
- id: in_len
  doc: lengths of the contigs
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
- MergePaths
