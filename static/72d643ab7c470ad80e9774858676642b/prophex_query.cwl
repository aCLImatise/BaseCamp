class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/prophex_query.cwl
inputs:
- id: length_of_kmer
  doc: length of k-mer
  type: long
  inputBinding:
    prefix: -k
- id: use_klcp_querying
  doc: use k-LCP for querying
  type: boolean
  inputBinding:
    prefix: -u
- id: output_set_chromosomes
  doc: output set of chromosomes for every k-mer
  type: boolean
  inputBinding:
    prefix: -v
- id: check_kmer_border
  doc: do not check whether k-mer is on border of two contigs, and show such k-mers
    in output
  type: boolean
  inputBinding:
    prefix: -p
- id: print_sequences_qualities
  doc: print sequences and base qualities
  type: boolean
  inputBinding:
    prefix: -b
- id: log_file_name
  doc: log file name to output statistics
  type: string
  inputBinding:
    prefix: -l
- id: number_of_threads
  doc: number of threads [1]
  type: long
  inputBinding:
    prefix: -t
- id: idx_base
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- prophex
- query
