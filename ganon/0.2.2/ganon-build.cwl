#!/usr/bin/env cwl-runner

baseCommand:
- ganon-build
class: CommandLineTool
cwlVersion: v1.0
id: ganon-build
inputs:
- doc: Sequence files .fasta .fa .fna (e.g ref.fna[.gz],[ref2.fna[.gz],...,refN.fna[.gz]])
  id: reference_files
  inputBinding:
    prefix: --reference-files
  type: string
- doc: Directory with reference files. Do not provide wildcards, just path (e.g. /path/to/folder/)
  id: directory_reference_files
  inputBinding:
    prefix: --directory-reference-files
  type: string
- doc: Extension of the files to search in the --directory-reference-files (e.g. '.fna')
  id: extension
  inputBinding:
    prefix: --extension
  type: string
- doc: 'Tab-separated file linking sequences and bin identifiers. The file should
    contain the following fields: Seq. Identifier <tab> Pos. Seq. Start <tab> Pos.
    Seq. End <tab> Bin Id'
  id: seq_id_bin_file
  inputBinding:
    prefix: --seqid-bin-file
  type: string
- doc: Output file for filter (e.g. filter.ibf)
  id: output_filter_file
  inputBinding:
    prefix: --output-filter-file
  type: string
- doc: Previously generated filter file to be updated
  id: update_filter_file
  inputBinding:
    prefix: --update-filter-file
  type: string
- doc: When using --update-filter-file and all sequences are provided to update index,
    set this option to not only add sequences to the filter but also remove
  id: update_complete
  inputBinding:
    prefix: --update-complete
  type: boolean
- doc: Final filter size in Megabytes (MB) [mutually exclusive --filter-size-bits]
  id: filter_size
  inputBinding:
    prefix: --filter-size
  type: string
- doc: Final filter size in Bits (bit) [mutually exclusive --filter-size]
  id: filter_size_bits
  inputBinding:
    prefix: --filter-size-bits
  type: string
- doc: k size to build filter
  id: km_er_size
  inputBinding:
    prefix: --kmer-size
  type: string
- doc: Number of hash functions to build filter
  id: hash_functions
  inputBinding:
    prefix: --hash-functions
  type: string
- doc: Number of threads
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: Number of sequences for each batch
  id: n_refs
  inputBinding:
    prefix: --n-refs
  type: string
- doc: Number of batches of n-refs to hold in memory
  id: n_batches
  inputBinding:
    prefix: --n-batches
  type: string
- doc: Verbose output mode
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Quiet output mode (only outputs errors and warnings to the stderr)
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
