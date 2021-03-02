class: CommandLineTool
id: abyss_scaffold.cwl
inputs:
- id: in_n_pairs
  doc: minimum number of pairs [0]
  type: long?
  inputBinding:
    prefix: --npairs
- id: in_seed_length
  doc: "minimum contig length [200]\nor -s N0-N1   Find the value of s in [N0,N1]\n\
    that maximizes the scaffold N50."
  type: long?
  inputBinding:
    prefix: --seed-length
- id: in_km_er
  doc: length of a k-mer
  type: long?
  inputBinding:
    prefix: --kmer
- id: in_genome_size
  doc: "expected genome size. Used to calculate NG50\nand associated stats [disabled]"
  type: long?
  inputBinding:
    prefix: --genome-size
- id: in_min_gap
  doc: minimum scaffold gap length to output [50]
  type: long?
  inputBinding:
    prefix: --min-gap
- id: in_max_gap
  doc: maximum scaffold gap length to output [inf]
  type: long?
  inputBinding:
    prefix: --max-gap
- id: in_complex
  doc: remove complex transitive edges
  type: boolean?
  inputBinding:
    prefix: --complex
- id: in_no_complex
  doc: don't remove complex transitive edges [default]
  type: boolean?
  inputBinding:
    prefix: --no-complex
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
- id: in_out
  doc: write the paths to FILE
  type: File?
  inputBinding:
    prefix: --out
- id: in_graph
  doc: write the graph to FILE
  type: File?
  inputBinding:
    prefix: --graph
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
- id: in_fast_a
  doc: contigs in FASTA format
  type: string
  inputBinding:
    position: 0
- id: in_overlap
  doc: the contig overlap graph
  type: string
  inputBinding:
    position: 1
- id: in_dist
  doc: estimates of the distance between contigs
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- abyss-scaffold
