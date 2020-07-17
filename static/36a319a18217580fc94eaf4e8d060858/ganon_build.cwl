class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ganon_build.cwl
inputs:
- id: reference_files
  doc: Sequence files .fasta .fa .fna (e.g ref.fna[.gz],[ref2.fna[.gz],...,refN.fna[.gz]])
  type: string
  inputBinding:
    prefix: --reference-files
- id: directory_reference_files
  doc: Directory with reference files. Do not provide wildcards, just path (e.g. /path/to/folder/)
  type: string
  inputBinding:
    prefix: --directory-reference-files
- id: extension
  doc: Extension of the files to search in the --directory-reference-files (e.g. '.fna')
  type: string
  inputBinding:
    prefix: --extension
- id: seq_id_bin_file
  doc: 'Tab-separated file linking sequences and bin identifiers. The file should
    contain the following fields: Seq. Identifier <tab> Pos. Seq. Start <tab> Pos.
    Seq. End <tab> Bin Id'
  type: string
  inputBinding:
    prefix: --seqid-bin-file
- id: output_filter_file
  doc: Output file for filter (e.g. filter.ibf)
  type: string
  inputBinding:
    prefix: --output-filter-file
- id: update_filter_file
  doc: Previously generated filter file to be updated
  type: string
  inputBinding:
    prefix: --update-filter-file
- id: update_complete
  doc: When using --update-filter-file and all sequences are provided to update index,
    set this option to not only add sequences to the filter but also remove
  type: boolean
  inputBinding:
    prefix: --update-complete
- id: filter_size
  doc: Final filter size in Megabytes (MB) [mutually exclusive --filter-size-bits]
  type: string
  inputBinding:
    prefix: --filter-size
- id: filter_size_bits
  doc: Final filter size in Bits (bit) [mutually exclusive --filter-size]
  type: string
  inputBinding:
    prefix: --filter-size-bits
- id: km_er_size
  doc: k size to build filter
  type: string
  inputBinding:
    prefix: --kmer-size
- id: hash_functions
  doc: Number of hash functions to build filter
  type: string
  inputBinding:
    prefix: --hash-functions
- id: threads
  doc: Number of threads
  type: string
  inputBinding:
    prefix: --threads
- id: n_refs
  doc: Number of sequences for each batch
  type: string
  inputBinding:
    prefix: --n-refs
- id: n_batches
  doc: Number of batches of n-refs to hold in memory
  type: string
  inputBinding:
    prefix: --n-batches
- id: verbose
  doc: Verbose output mode
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: Quiet output mode (only outputs errors and warnings to the stderr)
  type: boolean
  inputBinding:
    prefix: --quiet
- id: option_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ganon-build
