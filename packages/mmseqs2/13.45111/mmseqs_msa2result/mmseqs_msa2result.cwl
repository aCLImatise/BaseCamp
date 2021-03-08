class: CommandLineTool
id: mmseqs_msa2result.cwl
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
- id: in_match_mode
  doc: '0: Columns that have a residue in the first sequence are kept, 1: columns
    that have a residue in --match-ratio of all sequences are kept [0]'
  type: long?
  inputBinding:
    prefix: --match-mode
- id: in_match_ratio
  doc: Columns that have a residue in this ratio of all sequences are kept [0.500]
  type: double?
  inputBinding:
    prefix: --match-ratio
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
- id: in_cov
  doc: Filter output MSAs using min. fraction of query residues covered by matched
    sequences [0.0,1.0] [0.000]
  type: double?
  inputBinding:
    prefix: --cov
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
- id: in_max_seq_id
  doc: Reduce redundancy of output MSA using max. pairwise sequence identity [0.0,1.0]
    [0.900]
  type: double?
  inputBinding:
    prefix: --max-seq-id
- id: in_diff
  doc: Filter MSAs by selecting most diverse set of sequences, keeping at least this
    many seqs in each MSA block of length 50 [1000]
  type: long?
  inputBinding:
    prefix: --diff
- id: in_msa_type
  doc: 'MSA Type: 0: cA3M, 1: A3M, 2: FASTA [2]'
  type: long?
  inputBinding:
    prefix: --msa-type
- id: in_sub_mat
  doc: Substitution matrix file [nucl:nucleotide.out,aa:blosum62.out]
  type: File?
  inputBinding:
    prefix: --sub-mat
- id: in_threads
  doc: Number of CPU-cores used (all by default) [2]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_compressed
  doc: Write compressed output [0]
  type: long?
  inputBinding:
    prefix: --compressed
- id: in_verbosity_level_errors
  doc: 'Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]'
  type: long?
  inputBinding:
    prefix: -v
- id: in_skip_query
  doc: Skip the query sequence [0]
  type: boolean?
  inputBinding:
    prefix: --skip-query
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
- msa2result
