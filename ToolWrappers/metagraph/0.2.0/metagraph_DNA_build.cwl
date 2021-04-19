class: CommandLineTool
id: metagraph_DNA_build.cwl
inputs:
- id: in_min_count
  doc: '[INT]    min k-mer abundance, including [1]'
  type: boolean?
  inputBinding:
    prefix: --min-count
- id: in_max_count
  doc: '[INT]    max k-mer abundance, excluding [inf]'
  type: boolean?
  inputBinding:
    prefix: --max-count
- id: in_min_count_q
  doc: '[INT]  min k-mer abundance quantile (min-count is used by default) [0.0]'
  type: boolean?
  inputBinding:
    prefix: --min-count-q
- id: in_max_count_q
  doc: '[INT]  max k-mer abundance quantile (max-count is used by default) [1.0]'
  type: boolean?
  inputBinding:
    prefix: --max-count-q
- id: in_reference
  doc: '[STR]    basename of reference sequence (for parsing VCF files) []'
  type: boolean?
  inputBinding:
    prefix: --reference
- id: in_graph
  doc: '[STR]        graph representation: succinct / bitmap / hash / hashstr / hashfast
    [succinct]'
  type: boolean?
  inputBinding:
    prefix: --graph
- id: in_count_km_ers
  doc: count k-mers and build weighted graph [off]
  type: boolean?
  inputBinding:
    prefix: --count-kmers
- id: in_count_width
  doc: number of bits used to represent k-mer abundance [8]
  type: boolean?
  inputBinding:
    prefix: --count-width
- id: in_index_ranges
  doc: '[INT] index all node ranges in BOSS for suffixes of given length [10]'
  type: boolean?
  inputBinding:
    prefix: --index-ranges
- id: in_km_er_length
  doc: '[INT]  length of the k-mer to use [3]'
  type: boolean?
  inputBinding:
    prefix: --kmer-length
- id: in_mode
  doc: 'k-mer indexing mode: basic / canonical / primary [basic]'
  type: boolean?
  inputBinding:
    prefix: --mode
- id: in_complete
  doc: construct a complete graph (only for Bitmap graph) [off]
  type: boolean?
  inputBinding:
    prefix: --complete
- id: in_mem_cap_gb
  doc: '[INT]   preallocated buffer size in GB [1]'
  type: boolean?
  inputBinding:
    prefix: --mem-cap-gb
- id: in_dynamic
  doc: use dynamic build method [off]
  type: boolean?
  inputBinding:
    prefix: --dynamic
- id: in_len_suffix
  doc: '[INT]   k-mer suffix length for building graph from chunks [0]'
  type: boolean?
  inputBinding:
    prefix: --len-suffix
- id: in_suffix
  doc: build graph chunk only for k-mers with the suffix given [off]
  type: boolean?
  inputBinding:
    prefix: --suffix
- id: in_outfile_base
  doc: '[STR] basename of output file []'
  type: File?
  inputBinding:
    prefix: --outfile-base
- id: in_mask_dummy
  doc: build mask for dummy k-mers (only for Succinct graph) [off]
  type: boolean?
  inputBinding:
    prefix: --mask-dummy
- id: in_parallel
  doc: '[INT]     use multiple threads for computation [1]'
  type: boolean?
  inputBinding:
    prefix: --parallel
- id: in_disk_swap
  doc: '[STR]    directory to use for temporary files [off]'
  type: boolean?
  inputBinding:
    prefix: --disk-swap
- id: in_disk_cap_gb
  doc: '[INT]  max temp disk space to use before forcing a merge, in GB [inf]'
  type: boolean?
  inputBinding:
    prefix: --disk-cap-gb
- id: in_verbose
  doc: switch on verbose output [off]
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_file_one
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile_base
  doc: '[STR] basename of output file []'
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile_base)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/metagraph:0.2.0--h74b8f77_0
cwlVersion: v1.1
baseCommand:
- metagraph_DNA
- build
