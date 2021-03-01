class: CommandLineTool
id: fastq_kmers.cwl
inputs:
- id: in_size
  doc: 'kmer size (default: 1)'
  type: long?
  inputBinding:
    prefix: --size
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fastq-kmers
