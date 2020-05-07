class: CommandLineTool
id: poppunk_sketch.cwl
inputs:
- id: sketch
  doc: Create a database of sketches
  type: boolean
  inputBinding:
    prefix: --sketch
- id: query
  doc: Find distances between two sketch databases
  type: boolean
  inputBinding:
    prefix: --query
- id: r_file
  doc: Samples to sketch
  type: string
  inputBinding:
    prefix: --rfile
- id: ref_db
  doc: Prefix of reference database file
  type: string
  inputBinding:
    prefix: --ref-db
- id: query_db
  doc: Prefix of query database file
  type: string
  inputBinding:
    prefix: --query-db
- id: min_k
  doc: Minimum kmer length [default = 13]
  type: long
  inputBinding:
    prefix: --min-k
- id: max_k
  doc: Maximum kmer length [default = 29]
  type: long
  inputBinding:
    prefix: --max-k
- id: k_step
  doc: K-mer step size [default = 4]
  type: string
  inputBinding:
    prefix: --k-step
- id: sketch_size
  doc: Kmer sketch size [default = 10000]
  type: string
  inputBinding:
    prefix: --sketch-size
- id: min_count
  doc: Minimum k-mer count from reads [default = 20]
  type: long
  inputBinding:
    prefix: --min-count
- id: cpus
  doc: Number of CPUs to use [default = 1]
  type: string
  inputBinding:
    prefix: --cpus
outputs: []
cwlVersion: v1.1
baseCommand:
- poppunk_sketch
