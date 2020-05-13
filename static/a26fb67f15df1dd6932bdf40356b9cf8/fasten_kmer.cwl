class: CommandLineTool
id: fasten_kmer.cwl
inputs:
- id: num_cpus
  doc: 'Number of CPUs (default: 1)'
  type: long
  inputBinding:
    prefix: --numcpus
- id: paired_end
  doc: The input reads are interleaved paired-end
  type: boolean
  inputBinding:
    prefix: --paired-end
- id: verbose
  doc: Print more status messages
  type: boolean
  inputBinding:
    prefix: --verbose
- id: km_er_length
  doc: The size of the kmer
  type: long
  inputBinding:
    prefix: --kmer-length
outputs: []
cwlVersion: v1.1
baseCommand:
- fasten_kmer
