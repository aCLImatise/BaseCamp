class: CommandLineTool
id: mmseqs_result2pp.cwl
inputs:
- id: comp_bias_corr
  doc: '1               correct for locally biased amino acid composition [0,1]     '
  type: boolean
  inputBinding:
    prefix: --comp-bias-corr
- id: e_profile
  doc: 0.001           includes sequences matches with < e-value thr. into the profile
    [>=0.0]
  type: boolean
  inputBinding:
    prefix: --e-profile
- id: wg
  doc: 'false           use global sequence weighting for profile calculation       '
  type: boolean
  inputBinding:
    prefix: --wg
- id: filter_msa
  doc: '1               filter msa: 0: do not filter, 1: filter                     '
  type: boolean
  inputBinding:
    prefix: --filter-msa
- id: max_seq_id
  doc: 0.900           reduce redundancy of output MSA using max. pairwise sequence
    identity [0.0,1.0]
  type: boolean
  inputBinding:
    prefix: --max-seq-id
- id: qid
  doc: 0.000           reduce diversity of output MSAs using min.seq. identity with
    query sequences [0.0,1.0]
  type: boolean
  inputBinding:
    prefix: --qid
- id: qsc
  doc: -20.000         reduce diversity of output MSAs using min. score per aligned
    residue with query sequences [-50.0,100.0]
  type: boolean
  inputBinding:
    prefix: --qsc
- id: cov
  doc: 0.000           filter output MSAs using min. fraction of query residues covered
    by matched sequences [0.0,1.0]
  type: boolean
  inputBinding:
    prefix: --cov
- id: diff
  doc: 1000            filter MSAs by selecting most diverse set of sequences, keeping
    at least this many seqs in each MSA block of length 50
  type: boolean
  inputBinding:
    prefix: --diff
- id: pc_a
  doc: '1.000           pseudo count admixture strength                             '
  type: boolean
  inputBinding:
    prefix: --pca
- id: pcb
  doc: '1.500           pseudo counts: Neff at half of maximum admixture (0.0,infinity)'
  type: boolean
  inputBinding:
    prefix: --pcb
- id: no_preload
  doc: 'false           Do not preload database                                     '
  type: boolean
  inputBinding:
    prefix: --no-preload
- id: sub_mat
  doc: 'blosum62.out    amino acid substitution matrix file                         '
  type: boolean
  inputBinding:
    prefix: --sub-mat
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
- result2pp
