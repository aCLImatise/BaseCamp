class: CommandLineTool
id: kmer_db.cwl
inputs:
- id: in_number_default_number
  doc: '- number of threads (default: number of available cores),'
  type: long?
  inputBinding:
    prefix: -t
- id: in_length_kmers_default
  doc: '- length of k-mers (default: 18),'
  type: long?
  inputBinding:
    prefix: -k
- id: in_fraction_kmers_accepted
  doc: '- fraction of all k-mers to be accepted by the minhash filter (default: 1),'
  type: long?
  inputBinding:
    prefix: -f
- id: in_multisample_fast_a
  doc: '- each sequence in a genome FASTA file is treated as a separate sample.'
  type: boolean?
  inputBinding:
    prefix: -multisample-fasta
- id: in_buffer
  doc: "- size of cache buffer in megabytes, applies to all2all mode\n(use L3 size\
    \ for Intel CPUs and L2 for AMD to maximize performance; default: 8)."
  type: long?
  inputBinding:
    prefix: -buffer
- id: in_phylip_out
  doc: '- store output distance matrix in a Phylip format'
  type: boolean?
  inputBinding:
    prefix: -phylip-out
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/kmer-db:1.7.6--he513fc3_0
cwlVersion: v1.1
baseCommand:
- kmer-db
