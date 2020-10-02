class: CommandLineTool
id: prophex_query.cwl
inputs:
- id: in_length_of_kmer
  doc: length of k-mer
  type: long
  inputBinding:
    prefix: -k
- id: in_use_klcp_querying
  doc: use k-LCP for querying
  type: boolean
  inputBinding:
    prefix: -u
- id: in_output_set_chromosomes
  doc: output set of chromosomes for every k-mer
  type: boolean
  inputBinding:
    prefix: -v
- id: in_check_kmer_border
  doc: do not check whether k-mer is on border of two contigs, and show such k-mers
    in output
  type: boolean
  inputBinding:
    prefix: -p
- id: in_print_sequences_qualities
  doc: print sequences and base qualities
  type: boolean
  inputBinding:
    prefix: -b
- id: in_log_file_name
  doc: log file name to output statistics
  type: File
  inputBinding:
    prefix: -l
- id: in_number_of_threads
  doc: number of threads [1]
  type: long
  inputBinding:
    prefix: -t
- id: in_idx_base
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_in_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_log_file_name
  doc: log file name to output statistics
  type: File
  outputBinding:
    glob: $(inputs.in_log_file_name)
cwlVersion: v1.1
baseCommand:
- prophex
- query
