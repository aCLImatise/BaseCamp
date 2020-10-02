class: CommandLineTool
id: fastANI.cwl
inputs:
- id: in_ref
  doc: reference genome (fasta/fastq)[.gz]
  type: string
  inputBinding:
    prefix: --ref
- id: in_ref_list
  doc: a file containing list of reference genome files, one genome per line
  type: File
  inputBinding:
    prefix: --refList
- id: in_query
  doc: query genome (fasta/fastq)[.gz]
  type: string
  inputBinding:
    prefix: --query
- id: in_query_list
  doc: a file containing list of query genome files, one genome per line
  type: File
  inputBinding:
    prefix: --queryList
- id: in_km_er
  doc: 'kmer size <= 16 [default : 16]'
  type: long
  inputBinding:
    prefix: --kmer
- id: in_threads
  doc: 'thread count for parallel execution [default : 1]'
  type: long
  inputBinding:
    prefix: --threads
- id: in_fra_glen
  doc: 'fragment length [default : 3,000]'
  type: long
  inputBinding:
    prefix: --fragLen
- id: in_min_fraction
  doc: "minimum fraction of genome that must be shared for trusting ANI. If\nreference\
    \ and query genome size differ, smaller one among the two is\nconsidered. [default\
    \ : 0.2]"
  type: long
  inputBinding:
    prefix: --minFraction
- id: in_visualize
  doc: "output mappings for visualization, can be enabled for single genome to\nsingle\
    \ genome comparison only [disabled by default]"
  type: boolean
  inputBinding:
    prefix: --visualize
- id: in_matrix
  doc: "also output ANI values as lower triangular matrix (format inspired from\n\
    phylip). If enabled, you should expect an output file with .matrix\nextension\
    \ [disabled by default]"
  type: File
  inputBinding:
    prefix: --matrix
- id: in_output
  doc: "[required]\noutput file name"
  type: File
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_matrix
  doc: "also output ANI values as lower triangular matrix (format inspired from\n\
    phylip). If enabled, you should expect an output file with .matrix\nextension\
    \ [disabled by default]"
  type: File
  outputBinding:
    glob: $(inputs.in_matrix)
- id: out_output
  doc: "[required]\noutput file name"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- fastANI
