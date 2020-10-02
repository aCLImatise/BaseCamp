class: CommandLineTool
id: fmlrc.cwl
inputs:
- id: in_print_version_number
  doc: print version number and exit
  type: boolean
  inputBinding:
    prefix: -v
- id: in_small_kmer_size
  doc: 'small k-mer size (default: 21)'
  type: long
  inputBinding:
    prefix: -k
- id: in_large_kmer_size
  doc: 'large K-mer size (default: 59), set K=k for single pass'
  type: long
  inputBinding:
    prefix: -K
- id: in_number_correction_threads
  doc: number of correction threads
  type: long
  inputBinding:
    prefix: -p
- id: in_index_read_start
  doc: 'index of read to start with (default: 0)'
  type: long
  inputBinding:
    prefix: -b
- id: in_index_read_end
  doc: 'index of read to end with (default: end of file)'
  type: long
  inputBinding:
    prefix: -e
- id: in_absolute_minimum_count
  doc: 'absolute minimum count to consider a path (default: 5)'
  type: long
  inputBinding:
    prefix: -m
- id: in_dynamic_minimum_fraction
  doc: 'dynamic minimum fraction of median to consider a path (default: .10)'
  type: double
  inputBinding:
    prefix: -f
- id: in_set_branch_limit
  doc: 'set branch limit to <INT>*<k or K> (default: 4)'
  type: long
  inputBinding:
    prefix: -B
- id: in_build_sampled_fmindex
  doc: build a sampled FM-index instead of bit arrays
  type: boolean
  inputBinding:
    prefix: -i
- id: in_fmindex_sampled_requires
  doc: 'FM-index is sampled every 2**<INT> values (default: 8); requires -i'
  type: long
  inputBinding:
    prefix: -F
- id: in_verbose_output
  doc: verbose output
  type: boolean
  inputBinding:
    prefix: -V
- id: in_comp_msbwtdotnpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_long_reads_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_corrected_reads_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fmlrc
