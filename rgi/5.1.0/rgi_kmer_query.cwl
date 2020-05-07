class: CommandLineTool
id: rgi_kmer_query.cwl
inputs:
- id: o
  doc: '[--local] [--debug]'
  type: string
  inputBinding:
    prefix: -o
- id: input
  doc: Input file (bam file from RGI*BWT, json file of RGI results, fasta file of
    sequences)
  type: string
  inputBinding:
    prefix: --input
- id: bwt
  doc: Specify if the input file for analysis is a bam file generated from RGI*BWT
  type: boolean
  inputBinding:
    prefix: --bwt
- id: rgi
  doc: Specify if the input file is a RGI results json file
  type: boolean
  inputBinding:
    prefix: --rgi
- id: fast_a
  doc: Specify if the input file is a fasta file of sequences
  type: boolean
  inputBinding:
    prefix: --fasta
- id: km_er_size
  doc: length of k
  type: string
  inputBinding:
    prefix: --kmer_size
- id: minimum
  doc: Minimum number of kmers in the called category for the classification to be
    made (default=10).
  type: long
  inputBinding:
    prefix: --minimum
- id: threads
  doc: number of threads (CPUs) to use (default=1)
  type: string
  inputBinding:
    prefix: --threads
- id: output
  doc: Output file name.
  type: string
  inputBinding:
    prefix: --output
- id: local
  doc: 'use local database (default: uses database in executable directory)'
  type: boolean
  inputBinding:
    prefix: --local
- id: debug
  doc: debug mode
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- rgi
- kmer_query
