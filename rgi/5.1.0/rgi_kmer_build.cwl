class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/rgi_kmer_build.cwl
inputs:
- id: input_directory
  doc: input directory of prevalence data
  type: string
  inputBinding:
    prefix: --input_directory
- id: card
  doc: fasta file of CARD reference sequences. If missing, run 'rgi card_annotation'
    to generate.
  type: string
  inputBinding:
    prefix: --card
- id: kmer_size_eg
  doc: k-mer size (e.g., 61)
  type: string
  inputBinding:
    prefix: -k
- id: skip
  doc: skips the concatenation and splitting of the CARD*R*V sequences.
  type: boolean
  inputBinding:
    prefix: --skip
- id: threads
  doc: number of threads (CPUs) to use (default=1)
  type: string
  inputBinding:
    prefix: --threads
- id: batch_size
  doc: number of kmers to query at a time using pyahocorasick --the greater the number
    the more memory usage (default=100,000)
  type: string
  inputBinding:
    prefix: --batch_size
- id: rgi
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- rgi
- kmer_build
