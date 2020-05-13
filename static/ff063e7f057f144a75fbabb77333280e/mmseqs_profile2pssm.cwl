class: CommandLineTool
id: mmseqs_profile2pssm.cwl
inputs:
- id: comp_bias_corr
  doc: '1               correct for locally biased amino acid composition [0,1]     '
  type: boolean
  inputBinding:
    prefix: --comp-bias-corr
- id: db_output
  doc: 'false           Output a result db instead of a text file                   '
  type: boolean
  inputBinding:
    prefix: --db-output
- id: sub_mat
  doc: 'blosum62.out    amino acid substitution matrix file                         '
  type: boolean
  inputBinding:
    prefix: --sub-mat
- id: max_seq_len
  doc: '65535           Maximum sequence length [1,32768]                           '
  type: boolean
  inputBinding:
    prefix: --max-seq-len
- id: threads
  doc: 8               number of cores used for the computation (uses all cores by
    default)
  type: boolean
  inputBinding:
    prefix: --threads
- id: v
  doc: '3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- mmseqs
- profile2pssm
