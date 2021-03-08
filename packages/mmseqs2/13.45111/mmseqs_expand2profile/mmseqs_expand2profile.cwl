class: CommandLineTool
id: mmseqs_expand2profile.cwl
inputs:
- id: in_comp_bias_corr
  doc: Correct for locally biased amino acid composition (range 0-1) [1]
  type: long?
  inputBinding:
    prefix: --comp-bias-corr
- id: in_gap_open
  doc: Gap open cost [nucl:5,aa:11]
  type: long?
  inputBinding:
    prefix: --gap-open
- id: in_gap_extend
  doc: Gap extension cost [nucl:2,aa:1]
  type: long?
  inputBinding:
    prefix: --gap-extend
- id: in_score_bias
  doc: Score bias when computing SW alignment (in bits) [0.000]
  type: double?
  inputBinding:
    prefix: --score-bias
- id: in_list_matches_fraction
  doc: List matches above this fraction of aligned (covered) residues (see --cov-mode)
    [0.000]
  type: double?
  inputBinding:
    prefix: -c
- id: in_cov_mode
  doc: "0: coverage of query and target\n1: coverage of target\n2: coverage of query\n\
    3: target seq. length has to be at least x% of query length\n4: query seq. length\
    \ has to be at least x% of target length\n5: short seq. needs to be at least x%\
    \ of the other seq. length [0]"
  type: long?
  inputBinding:
    prefix: --cov-mode
- id: in_e_profile
  doc: Include sequences matches with < E-value thr. into the profile (>=0.0) [1.000E-03]
  type: double?
  inputBinding:
    prefix: --e-profile
- id: in_mask_profile
  doc: Mask query sequence of profile using tantan [0,1] [1]
  type: long?
  inputBinding:
    prefix: --mask-profile
- id: in_wg
  doc: Use global sequence weighting for profile calculation [0]
  type: boolean?
  inputBinding:
    prefix: --wg
- id: in_filter_msa
  doc: 'Filter msa: 0: do not filter, 1: filter [1]'
  type: long?
  inputBinding:
    prefix: --filter-msa
- id: in_max_seq_id
  doc: Reduce redundancy of output MSA using max. pairwise sequence identity [0.0,1.0]
    [0.900]
  type: double?
  inputBinding:
    prefix: --max-seq-id
- id: in_qid
  doc: Reduce diversity of output MSAs using min.seq. identity with query sequences
    [0.0,1.0] [0.000]
  type: double?
  inputBinding:
    prefix: --qid
- id: in_qsc
  doc: Reduce diversity of output MSAs using min. score per aligned residue with query
    sequences [-50.0,100.0] [-20.000]
  type: double?
  inputBinding:
    prefix: --qsc
- id: in_cov
  doc: Filter output MSAs using min. fraction of query residues covered by matched
    sequences [0.0,1.0] [0.000]
  type: double?
  inputBinding:
    prefix: --cov
- id: in_diff
  doc: Filter MSAs by selecting most diverse set of sequences, keeping at least this
    many seqs in each MSA block of length 50 [1000]
  type: long?
  inputBinding:
    prefix: --diff
- id: in_pc_a
  doc: Pseudo count admixture strength [0.000]
  type: double?
  inputBinding:
    prefix: --pca
- id: in_pcb
  doc: 'Pseudo counts: Neff at half of maximum admixture (range 0.0-inf) [1.500]'
  type: double?
  inputBinding:
    prefix: --pcb
- id: in_expansion_mode
  doc: 'Update score, E-value, and sequence identity by 0: input alignment 1: rescoring
    the inferred backtrace [0]'
  type: long?
  inputBinding:
    prefix: --expansion-mode
- id: in_allow_deletion
  doc: Allow deletions in a MSA [0]
  type: boolean?
  inputBinding:
    prefix: --allow-deletion
- id: in_sub_mat
  doc: Substitution matrix file [nucl:nucleotide.out,aa:blosum62.out]
  type: File?
  inputBinding:
    prefix: --sub-mat
- id: in_max_seq_len
  doc: Maximum sequence length [65535]
  type: long?
  inputBinding:
    prefix: --max-seq-len
- id: in_compressed
  doc: Write compressed output [0]
  type: long?
  inputBinding:
    prefix: --compressed
- id: in_threads
  doc: Number of CPU-cores used (all by default) [2]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_verbosity_level_errors
  doc: 'Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]'
  type: long?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_sub_mat
  doc: Substitution matrix file [nucl:nucleotide.out,aa:blosum62.out]
  type: File?
  outputBinding:
    glob: $(inputs.in_sub_mat)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0
cwlVersion: v1.1
baseCommand:
- mmseqs
- expand2profile
