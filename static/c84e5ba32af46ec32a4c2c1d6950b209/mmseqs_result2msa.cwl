class: CommandLineTool
id: mmseqs_result2msa.cwl
inputs:
- id: in_comp_bias_corr
  doc: 1               correct for locally biased amino acid composition [0,1]
  type: boolean?
  inputBinding:
    prefix: --comp-bias-corr
- id: in_e_profile
  doc: 0.001           includes sequences matches with < e-value thr. into the profile
    [>=0.0]
  type: boolean?
  inputBinding:
    prefix: --e-profile
- id: in_filter_msa
  doc: '0               filter msa: 0: do not filter, 1: filter'
  type: boolean?
  inputBinding:
    prefix: --filter-msa
- id: in_max_seq_id
  doc: 0.900           reduce redundancy of output MSA using max. pairwise sequence
    identity [0.0,1.0]
  type: boolean?
  inputBinding:
    prefix: --max-seq-id
- id: in_qid
  doc: 0.000           reduce diversity of output MSAs using min.seq. identity with
    query sequences [0.0,1.0]
  type: boolean?
  inputBinding:
    prefix: --qid
- id: in_two_zero_dot_zero_zero_zero
  doc: reduce diversity of output MSAs using min. score per aligned residue with query
    sequences [-50.0,100.0]
  type: boolean?
  inputBinding:
    prefix: '-20.000'
- id: in_cov
  doc: 0.000           filter output MSAs using min. fraction of query residues covered
    by matched sequences [0.0,1.0]
  type: boolean?
  inputBinding:
    prefix: --cov
- id: in_diff
  doc: 1000            filter MSAs by selecting most diverse set of sequences, keeping
    at least this many seqs in each MSA block of length 50
  type: boolean?
  inputBinding:
    prefix: --diff
- id: in_allow_deletion
  doc: false           allow deletions in a MSA
  type: boolean?
  inputBinding:
    prefix: --allow-deletion
- id: in_compress
  doc: false           create MSA in ca3m format
  type: boolean?
  inputBinding:
    prefix: --compress
- id: in_summarize
  doc: false           summarize cluster headers into a single header description
  type: boolean?
  inputBinding:
    prefix: --summarize
- id: in_sub_mat
  doc: blosum62.out    amino acid substitution matrix file
  type: File?
  inputBinding:
    prefix: --sub-mat
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
- result2msa
