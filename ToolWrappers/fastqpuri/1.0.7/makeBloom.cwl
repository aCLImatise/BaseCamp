class: CommandLineTool
id: makeBloom.cwl
inputs:
- id: in_fast_a
  doc: Fasta input file. Mandatory option.
  type: boolean?
  inputBinding:
    prefix: --fasta
- id: in_output
  doc: Output file, with NO extension. Mandatory option.
  type: File?
  inputBinding:
    prefix: --output
- id: in_km_er_size
  doc: kmer size, number or elements. Optional(default = 25)
  type: boolean?
  inputBinding:
    prefix: --kmersize
- id: in_fal_pos_rate
  doc: positive rate. Optional (default = 0.05)
  type: double?
  inputBinding:
    prefix: --fal_pos_rate
- id: in_hash_num
  doc: "number of hash functions used. Optional (default\nvalue computed from the\
    \ false positive rate)."
  type: boolean?
  inputBinding:
    prefix: --hashNum
- id: in_bf_size_bits
  doc: "size of the filter in bits. It will be forced to be\na multiple of 8. Optional\
    \ (default value computed\nfrom the false positive rate)."
  type: boolean?
  inputBinding:
    prefix: --bfsizeBits
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output file, with NO extension. Mandatory option.
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- makeBloom
