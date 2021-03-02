class: CommandLineTool
id: sga_graph_diff.cwl
inputs:
- id: in_verbose
  doc: display verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_prefix
  doc: prefix the output files with NAME
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_threads
  doc: use NUM computation threads
  type: long?
  inputBinding:
    prefix: --threads
- id: in_genome_size
  doc: "(optional) set the size of the genome to be N bases\nthis is used to determine\
    \ the number of bits to use in the bloom filter\nif unset, it will be calculated\
    \ from the reference genome FASTA file"
  type: long?
  inputBinding:
    prefix: --genome-size
- id: in_pre_cache_reference
  doc: "precache the named chromosome of the reference genome\nIf STR is \"all\" the\
    \ entire reference will be cached"
  type: string?
  inputBinding:
    prefix: --precache-reference
- id: in_variant
  doc: call variants present in the read set in FILE
  type: File?
  inputBinding:
    prefix: --variant
- id: in_base
  doc: "use the read set in FILE as the base line for comparison\nif this option is\
    \ not given, reference-based calls will be made"
  type: File?
  inputBinding:
    prefix: --base
- id: in_reference
  doc: use the reference sequence in FILE
  type: File?
  inputBinding:
    prefix: --reference
- id: in_km_er
  doc: use K-mers to discover variants
  type: string?
  inputBinding:
    prefix: --kmer
- id: in_min_discovery_count
  doc: require a variant k-mer to be seen at least T times
  type: long?
  inputBinding:
    prefix: --min-discovery-count
- id: in_algorithm
  doc: 'select the assembly algorithm to use from: debruijn, string'
  type: string?
  inputBinding:
    prefix: --algorithm
- id: in_min_overlap
  doc: require at least N bp overlap when assembling using a string graph
  type: long?
  inputBinding:
    prefix: --min-overlap
- id: in_min_dbg_count
  doc: only use k-mers seen T times when assembling using a de Bruijn graph
  type: long?
  inputBinding:
    prefix: --min-dbg-count
- id: in_ref
  doc: ''
  type: string?
  inputBinding:
    prefix: --ref
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sga
- graph-diff
