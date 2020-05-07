class: CommandLineTool
id: erne_create.cwl
inputs:
- id: fast_a
  doc: input file (can be repeated several time) [REQUIRED]
  type: string
  inputBinding:
    prefix: --fasta
- id: output_prefix
  doc: 'output reference file name in ERNE format. Suffix added automatically: .ebh
    for dB-Hash reference, .ebm for  dB-Hash methylated reference. [REQUIRED]'
  type: string
  inputBinding:
    prefix: --output-prefix
- id: methyl_hash
  doc: create reference for methylation search
  type: boolean
  inputBinding:
    prefix: --methyl-hash
- id: k
  doc: '[DEPRECATED] fingerprint length (default is  autodetected: log4(bl*n/2), where
    n=text length);  the  range of admissible values is 5-32. With --methyl-hash  the
    range of admissible values is 10-64'
  type: string
  inputBinding:
    prefix: --k
- id: bl
  doc: 'seed length (default: 20 for DNA search, 30 for  BS-search)'
  type: string
  inputBinding:
    prefix: --bl
- id: o
  doc: 'offrate for SA pointers (default: 16).'
  type: string
  inputBinding:
    prefix: --o
outputs: []
cwlVersion: v1.1
baseCommand:
- erne-create
