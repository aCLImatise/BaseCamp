class: CommandLineTool
id: mmseqs_clusthash.cwl
inputs:
- id: in_alph_size
  doc: 3               alphabet size [2,21]
  type: boolean?
  inputBinding:
    prefix: --alph-size
- id: in_min_seq_id
  doc: 0.000           list matches above this sequence identity (for clustering)
    [0.0,1.0]
  type: boolean?
  inputBinding:
    prefix: --min-seq-id
- id: in_sub_mat
  doc: blosum62.out    amino acid substitution matrix file
  type: File?
  inputBinding:
    prefix: --sub-mat
- id: in_max_seq_len
  doc: Maximum sequence length [1,32768]
  type: long?
  inputBinding:
    prefix: --max-seq-len
- id: in_threads
  doc: 8               number of cores used for the computation (uses all cores by
    default)
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_verbosity_level_nothing
  doc: '3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info'
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_sub_mat
  doc: blosum62.out    amino acid substitution matrix file
  type: File?
  outputBinding:
    glob: $(inputs.in_sub_mat)
hints: []
cwlVersion: v1.1
baseCommand:
- mmseqs
- clusthash
