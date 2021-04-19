class: CommandLineTool
id: metagraph_transform.cwl
inputs:
- id: in_index_ranges
  doc: '[INT] index all node ranges in BOSS for suffixes of given length [10]'
  type: boolean?
  inputBinding:
    prefix: --index-ranges
- id: in_clear_dummy
  doc: erase all redundant dummy edges and build an edgemask for non-redundant [off]
  type: boolean?
  inputBinding:
    prefix: --clear-dummy
- id: in_prune_tips
  doc: '[INT]   prune all dead ends of this length and shorter [0]'
  type: boolean?
  inputBinding:
    prefix: --prune-tips
- id: in_state
  doc: '[STR]        change state of succinct graph: small / dynamic / fast [stat]'
  type: boolean?
  inputBinding:
    prefix: --state
- id: in_to_adj_list
  doc: write adjacency list to file [off]
  type: boolean?
  inputBinding:
    prefix: --to-adj-list
- id: in_to_fast_a
  doc: extract sequences from graph and dump to compressed FASTA file [off]
  type: boolean?
  inputBinding:
    prefix: --to-fasta
- id: in_enumerate
  doc: enumerate sequences in FASTA [off]
  type: boolean?
  inputBinding:
    prefix: --enumerate
- id: in_initialize_bloom
  doc: construct a Bloom filter for faster detection of non-existing k-mers [off]
  type: boolean?
  inputBinding:
    prefix: --initialize-bloom
- id: in_unit_igs
  doc: extract all unitigs from graph and dump to compressed FASTA file [off]
  type: boolean?
  inputBinding:
    prefix: --unitigs
- id: in_primary_km_ers
  doc: output each k-mer only in one if its forms (canonical/non-canonical) [off]
  type: boolean?
  inputBinding:
    prefix: --primary-kmers
- id: in_to_gfa
  doc: dump graph layout to GFA [off]
  type: boolean?
  inputBinding:
    prefix: --to-gfa
- id: in_compacted
  doc: dump compacted de Bruijn graph to GFA [off]
  type: boolean?
  inputBinding:
    prefix: --compacted
- id: in_header
  doc: '[STR]       header for sequences in FASTA output []'
  type: boolean?
  inputBinding:
    prefix: --header
- id: in_parallel
  doc: '[INT]     use multiple threads for computation [1]'
  type: boolean?
  inputBinding:
    prefix: --parallel
- id: in_bloom_fpp
  doc: '[FLOAT]                          expected false positive rate [1.0]'
  type: boolean?
  inputBinding:
    prefix: --bloom-fpp
- id: in_bloom_bpk
  doc: '[FLOAT]                          number of bits per kmer [4.0]'
  type: boolean?
  inputBinding:
    prefix: --bloom-bpk
- id: in_bloom_max_num_hash_functions
  doc: '[INT]         maximum number of hash functions [10]'
  type: boolean?
  inputBinding:
    prefix: --bloom-max-num-hash-functions
- id: in_verbose
  doc: switch on verbose output [off]
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
- id: in_graph
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/metagraph:0.2.0--h74b8f77_0
cwlVersion: v1.1
baseCommand:
- metagraph
- transform
