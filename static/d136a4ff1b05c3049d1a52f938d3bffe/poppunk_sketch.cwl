class: CommandLineTool
id: poppunk_sketch.cwl
inputs:
- id: in_sketch
  doc: Create a database of sketches
  type: boolean
  inputBinding:
    prefix: --sketch
- id: in_query
  doc: Find distances between two sketch databases
  type: boolean
  inputBinding:
    prefix: --query
- id: in_r_file
  doc: Samples to sketch
  type: File
  inputBinding:
    prefix: --rfile
- id: in_ref_db
  doc: Prefix of reference database file
  type: File
  inputBinding:
    prefix: --ref-db
- id: in_query_db
  doc: Prefix of query database file
  type: File
  inputBinding:
    prefix: --query-db
- id: in_min_k
  doc: Minimum kmer length [default = 13]
  type: long
  inputBinding:
    prefix: --min-k
- id: in_max_k
  doc: Maximum kmer length [default = 29]
  type: long
  inputBinding:
    prefix: --max-k
- id: in_k_step
  doc: K-mer step size [default = 4]
  type: long
  inputBinding:
    prefix: --k-step
- id: in_sketch_size
  doc: Kmer sketch size [default = 10000]
  type: long
  inputBinding:
    prefix: --sketch-size
- id: in_min_count
  doc: Minimum k-mer count from reads [default = 20]
  type: long
  inputBinding:
    prefix: --min-count
- id: in_cpus
  doc: Number of CPUs to use [default = 1]
  type: long
  inputBinding:
    prefix: --cpus
- id: in_pp_sketch
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- poppunk_sketch
