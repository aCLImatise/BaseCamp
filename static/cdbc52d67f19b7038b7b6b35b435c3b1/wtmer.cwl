class: CommandLineTool
id: wtmer.cwl
inputs:
- id: i
  doc: Long reads sequences file, + *
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: Output file of kmer_frequency, *
  type: string
  inputBinding:
    prefix: -o
- id: f
  doc: Force overwrite
  type: boolean
  inputBinding:
    prefix: -f
- id: h
  doc: Disable homopolymer compression
  type: boolean
  inputBinding:
    prefix: -H
- id: k
  doc: Kmer size, 5 <= <-k> <= 16, [16]
  type: long
  inputBinding:
    prefix: -k
outputs: []
cwlVersion: v1.1
baseCommand:
- wtmer
