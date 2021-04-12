class: CommandLineTool
id: cobs_print_kmers.cwl
inputs:
- id: in_km_er_size
  doc: 'the size of one kmer, default: 31'
  type: boolean?
  inputBinding:
    prefix: --kmer-size
- id: in_query
  doc: the dna sequence to search for
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cobs:0.1.2--py39h56fc30b_0
cwlVersion: v1.1
baseCommand:
- cobs
- print-kmers
