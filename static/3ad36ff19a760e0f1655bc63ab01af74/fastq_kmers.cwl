class: CommandLineTool
id: fastq_kmers.cwl
inputs:
- id: size
  doc: 'kmer size (default: 1)'
  type: string
  inputBinding:
    prefix: --size
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq-kmers
