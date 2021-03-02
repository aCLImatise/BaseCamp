class: CommandLineTool
id: ganon_build.cwl
inputs:
- id: in_reference_files
  doc: "Sequence files .fasta .fa .fna (e.g\nref.fna[.gz],[ref2.fna[.gz],...,refN.fna[.gz]])"
  type: long?
  inputBinding:
    prefix: --reference-files
- id: in_directory_reference_files
  doc: "Directory with reference files. Do not\nprovide wildcards, just path (e.g.\
    \ /path/to/folder/)"
  type: Directory?
  inputBinding:
    prefix: --directory-reference-files
- id: in_extension
  doc: Extension of the files to search in the
  type: string?
  inputBinding:
    prefix: --extension
- id: in_seq_id_bin_file
  doc: "Tab-separated file linking sequences and bin\nidentifiers. The file should\
    \ contain the\nfollowing fields: Seq. Identifier <tab> Pos. Seq.\nStart <tab>\
    \ Pos. Seq. End <tab> Bin Id"
  type: File?
  inputBinding:
    prefix: --seqid-bin-file
- id: in_output_filter_file
  doc: Output file for filter (e.g. filter.ibf)
  type: File?
  inputBinding:
    prefix: --output-filter-file
- id: in_update_filter_file
  doc: Previously generated filter file to be
  type: File?
  inputBinding:
    prefix: --update-filter-file
- id: in_filter_size
  doc: "Final filter size in Megabytes (MB) [mutually\nexclusive --filter-size-bits]"
  type: long?
  inputBinding:
    prefix: --filter-size
- id: in_filter_size_bits
  doc: "Final filter size in Bits (bit) [mutually\nexclusive --filter-size]"
  type: long?
  inputBinding:
    prefix: --filter-size-bits
- id: in_km_er_size
  doc: k size to build filter
  type: long?
  inputBinding:
    prefix: --kmer-size
- id: in_hash_functions
  doc: Number of hash functions to build filter
  type: long?
  inputBinding:
    prefix: --hash-functions
- id: in_threads
  doc: Number of threads
  type: long?
  inputBinding:
    prefix: --threads
- id: in_n_refs
  doc: Number of sequences for each batch
  type: long?
  inputBinding:
    prefix: --n-refs
- id: in_n_batches
  doc: Number of batches of n-refs to hold in memory
  type: long?
  inputBinding:
    prefix: --n-batches
- id: in_verbose
  doc: Verbose output mode
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: "Quiet output mode (only outputs errors and\nwarnings to the stderr)"
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_c
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_updated
  doc: -c, --update-complete         When using --update-filter-file and all
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_filter_file
  doc: Output file for filter (e.g. filter.ibf)
  type: File?
  outputBinding:
    glob: $(inputs.in_output_filter_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ganon:0.4.0--py38hb45e0f6_0
cwlVersion: v1.1
baseCommand:
- ganon-build
