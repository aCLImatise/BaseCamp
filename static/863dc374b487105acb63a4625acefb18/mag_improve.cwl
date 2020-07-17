class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mag_improve.cwl
inputs:
- id: kmer_length_use
  doc: k-mer length to use
  type: string
  inputBinding:
    prefix: -k
- id: reference
  doc: fasta file with reference sequence (for benchmarking purposes)
  type: File
  inputBinding:
    prefix: --reference
- id: threads
  doc: '# of threads to use'
  type: string
  inputBinding:
    prefix: --threads
- id: tmpdir
  doc: scratch directory to use
  type: string
  inputBinding:
    prefix: --tmpdir
outputs: []
cwlVersion: v1.1
baseCommand:
- mag-improve
