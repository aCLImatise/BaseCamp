class: CommandLineTool
id: abyss_index.cwl
inputs:
- id: in_both
  doc: build both FAI and FM indexes [default]
  type: boolean?
  inputBinding:
    prefix: --both
- id: in_fai
  doc: build a FAI index
  type: boolean?
  inputBinding:
    prefix: --fai
- id: in_fm
  doc: build a FM index
  type: boolean?
  inputBinding:
    prefix: --fm
- id: in_fa_two_bwt
  doc: build the BWT directly without the SA
  type: boolean?
  inputBinding:
    prefix: --fa2bwt
- id: in_bwt_two_fm
  doc: build the FM index from the BWT
  type: boolean?
  inputBinding:
    prefix: --bwt2fm
- id: in_alphabet
  doc: use the alphabet STRING [-ACGT]
  type: string?
  inputBinding:
    prefix: --alphabet
- id: in_alpha
  doc: equivalent to -a' ABCDEFGHIJKLMNOPQRSTUVWXYZ'
  type: boolean?
  inputBinding:
    prefix: --alpha
- id: in_dna
  doc: equivalent to -a'-ACGT'
  type: boolean?
  inputBinding:
    prefix: --dna
- id: in_protein
  doc: equivalent to -a'#*ACDEFGHIKLMNPQRSTVWY'
  type: boolean?
  inputBinding:
    prefix: --protein
- id: in_sample
  doc: sample the suffix array [16]
  type: long?
  inputBinding:
    prefix: --sample
- id: in_decompress
  doc: decompress the index FILE
  type: boolean?
  inputBinding:
    prefix: --decompress
- id: in_stdout
  doc: write output to standard output
  type: boolean?
  inputBinding:
    prefix: --stdout
- id: in_verbose
  doc: display verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/abyss:2.2.5--ha4ec83a_0
cwlVersion: v1.1
baseCommand:
- abyss-index
