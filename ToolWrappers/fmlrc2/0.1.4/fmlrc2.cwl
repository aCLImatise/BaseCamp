class: CommandLineTool
id: fmlrc2.cwl
inputs:
- id: in_verbose
  doc: enable verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_begin_index
  doc: 'index of read to start with (default: 0)'
  type: long?
  inputBinding:
    prefix: --begin_index
- id: in_branch_factor
  doc: 'branching factor for correction, scaled by k (default: 4.0)'
  type: double?
  inputBinding:
    prefix: --branch_factor
- id: in_cache_size
  doc: 'the length of k-mer to precompute in cache (default: 8)'
  type: long?
  inputBinding:
    prefix: --cache_size
- id: in_end_index
  doc: 'index of read to end with (default: end of file)'
  type: File?
  inputBinding:
    prefix: --end_index
- id: in_kmer_sizes_correction
  doc: "...                k-mer sizes for correction, can be specified multiple times\
    \ (default: \"-k 21\n59\")"
  type: long?
  inputBinding:
    prefix: --K
- id: in_min_count
  doc: 'absolute minimum k-mer count to consisder a path (default: 5)'
  type: long?
  inputBinding:
    prefix: --min_count
- id: in_min_dynamic_count
  doc: "dynamic minimum k-mer count fraction of median to consider a path (default:\n\
    0.1)"
  type: long?
  inputBinding:
    prefix: --min_dynamic_count
- id: in_threads
  doc: 'number of correction threads (default: 1)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_flags
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_comp_msbwtdotnpy
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_long_reads_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fmlrc2:0.1.4--heda7bfa_0
cwlVersion: v1.1
baseCommand:
- fmlrc2
