class: CommandLineTool
id: novoBreak.cwl
inputs:
- id: i
  doc: Tumor bam file
  type: string
  inputBinding:
    prefix: -i
- id: c
  doc: Normal bam file
  type: string
  inputBinding:
    prefix: -c
- id: r
  doc: Reference file in fasta format
  type: string
  inputBinding:
    prefix: -r
- id: k
  doc: Kmer size, <=31 [31]
  type: long
  inputBinding:
    prefix: -k
- id: o
  doc: Output kmer
  type: string
  inputBinding:
    prefix: -o
- id: g
  doc: Output germline events [0]
  type: long
  inputBinding:
    prefix: -g
- id: m
  doc: Minimum kmer count regarded as novo kmers [3]
  type: long
  inputBinding:
    prefix: -m
outputs: []
cwlVersion: v1.1
baseCommand:
- novoBreak
