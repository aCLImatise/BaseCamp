class: CommandLineTool
id: makeBloom.cwl
inputs:
- id: fast_a
  doc: Fasta input file. Mandatory option.
  type: boolean
  inputBinding:
    prefix: --fasta
- id: output
  doc: Output file, with NO extension. Mandatory option.
  type: boolean
  inputBinding:
    prefix: --output
- id: km_er_size
  doc: kmer size, number or elements. Optional(default = 25)
  type: boolean
  inputBinding:
    prefix: --kmersize
- id: fal_pos_rate
  doc: positive rate. Optional (default = 0.05)
  type: string
  inputBinding:
    prefix: --fal_pos_rate
- id: hash_num
  doc: number of hash functions used. Optional (default value computed from the false
    positive rate).
  type: boolean
  inputBinding:
    prefix: --hashNum
- id: bf_size_bits
  doc: size of the filter in bits. It will be forced to be a multiple of 8. Optional
    (default value computed from the false positive rate).
  type: boolean
  inputBinding:
    prefix: --bfsizeBits
outputs: []
cwlVersion: v1.1
baseCommand:
- makeBloom
