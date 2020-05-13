class: CommandLineTool
id: abyss_index.cwl
inputs:
- id: both
  doc: build both FAI and FM indexes [default]
  type: boolean
  inputBinding:
    prefix: --both
- id: fai
  doc: build a FAI index
  type: boolean
  inputBinding:
    prefix: --fai
- id: fm
  doc: build a FM index
  type: boolean
  inputBinding:
    prefix: --fm
- id: fa2bwt
  doc: build the BWT directly without the SA
  type: boolean
  inputBinding:
    prefix: --fa2bwt
- id: bwt2fm
  doc: build the FM index from the BWT
  type: boolean
  inputBinding:
    prefix: --bwt2fm
- id: alphabet
  doc: use the alphabet STRING [-ACGT]
  type: string
  inputBinding:
    prefix: --alphabet
- id: alpha
  doc: equivalent to -a' ABCDEFGHIJKLMNOPQRSTUVWXYZ'
  type: boolean
  inputBinding:
    prefix: --alpha
- id: dna
  doc: equivalent to -a'-ACGT'
  type: boolean
  inputBinding:
    prefix: --dna
- id: protein
  doc: equivalent to -a'#*ACDEFGHIKLMNPQRSTVWY'
  type: boolean
  inputBinding:
    prefix: --protein
- id: sample
  doc: sample the suffix array [16]
  type: string
  inputBinding:
    prefix: --sample
- id: decompress
  doc: decompress the index FILE
  type: boolean
  inputBinding:
    prefix: --decompress
- id: stdout
  doc: write output to standard output
  type: boolean
  inputBinding:
    prefix: --stdout
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- abyss-index
