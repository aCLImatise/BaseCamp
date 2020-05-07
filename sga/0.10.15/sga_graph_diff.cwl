class: CommandLineTool
id: sga_graph_diff.cwl
inputs:
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: prefix
  doc: prefix the output files with NAME
  type: string
  inputBinding:
    prefix: --prefix
- id: threads
  doc: use NUM computation threads
  type: string
  inputBinding:
    prefix: --threads
- id: genome_size
  doc: (optional) set the size of the genome to be N bases this is used to determine
    the number of bits to use in the bloom filter if unset, it will be calculated
    from the reference genome FASTA file
  type: string
  inputBinding:
    prefix: --genome-size
- id: pre_cache_reference
  doc: precache the named chromosome of the reference genome If STR is "all" the entire
    reference will be cached
  type: string
  inputBinding:
    prefix: --precache-reference
- id: variant
  doc: call variants present in the read set in FILE
  type: File
  inputBinding:
    prefix: --variant
- id: base
  doc: use the read set in FILE as the base line for comparison if this option is
    not given, reference-based calls will be made
  type: File
  inputBinding:
    prefix: --base
- id: reference
  doc: use the reference sequence in FILE
  type: File
  inputBinding:
    prefix: --reference
- id: km_er
  doc: use K-mers to discover variants
  type: string
  inputBinding:
    prefix: --kmer
- id: min_discovery_count
  doc: require a variant k-mer to be seen at least T times
  type: string
  inputBinding:
    prefix: --min-discovery-count
- id: algorithm
  doc: 'select the assembly algorithm to use from: debruijn, string'
  type: string
  inputBinding:
    prefix: --algorithm
- id: min_overlap
  doc: require at least N bp overlap when assembling using a string graph
  type: string
  inputBinding:
    prefix: --min-overlap
- id: min_dbg_count
  doc: only use k-mers seen T times when assembling using a de Bruijn graph
  type: string
  inputBinding:
    prefix: --min-dbg-count
outputs: []
cwlVersion: v1.1
baseCommand:
- sga
- graph-diff
