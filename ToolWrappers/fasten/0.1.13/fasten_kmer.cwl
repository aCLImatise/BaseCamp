class: CommandLineTool
id: fasten_kmer.cwl
inputs:
- id: in_num_cpus
  doc: 'Number of CPUs (default: 1)'
  type: long?
  inputBinding:
    prefix: --numcpus
- id: in_paired_end
  doc: The input reads are interleaved paired-end
  type: boolean?
  inputBinding:
    prefix: --paired-end
- id: in_verbose
  doc: Print more status messages
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_km_er_length
  doc: "The size of the kmer\n"
  type: long?
  inputBinding:
    prefix: --kmer-length
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fasten_kmer
