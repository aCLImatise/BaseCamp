class: CommandLineTool
id: ../../../mhap.cwl
inputs:
- id: default_kmer_filter
  doc: ', default = "" k-mer filter file used for filtering out highly repetative
    k-mers. Must be sorted in descending order of frequency (second column).'
  type: boolean
  inputBinding:
    prefix: -f
- id: default_kmer_size
  doc: ', default = 16 [int], k-mer size used for MinHashing. The k-mer size for second
    stage filter is seperate, and can also be modified.'
  type: boolean
  inputBinding:
    prefix: -k
- id: only_directory_directory
  doc: ', default = "" Usage 2 only. The directory containing FASTA files that should
    be converted to binary format for storage.'
  type: boolean
  inputBinding:
    prefix: -p
- id: default_usage_fasta
  doc: ', default = "" Usage 1: The FASTA file of reads, or a directory of files,
    that will be compared to the set of reads in the box (see -s). Usage 2: The output
    directory for the binary formatted dat files.'
  type: boolean
  inputBinding:
    prefix: -q
- id: only_fasta_file
  doc: ', default = "" Usage 1 only. The FASTA or binary dat file (see Usage 2) of
    reads that will be stored in a box, and that all subsequent reads will be compared
    to.'
  type: boolean
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- mhap
