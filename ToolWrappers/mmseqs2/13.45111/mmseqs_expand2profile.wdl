version 1.0

task MmseqsExpand2profile {
  input {
    Int? comp_bias_corr
    Int? gap_open
    Int? gap_extend
    Float? score_bias
    Float? list_matches_fraction
    Int? cov_mode
    Float? e_profile
    Int? mask_profile
    Boolean? wg
    Int? filter_msa
    Float? max_seq_id
    Float? qid
    Float? qsc
    Float? cov
    Int? diff
    Float? pc_a
    Float? pcb
    Int? expansion_mode
    Boolean? allow_deletion
    File? sub_mat
    Int? max_seq_len
    Int? compressed
    Int? threads
    Int? verbosity_level_errors
  }
  command <<<
    mmseqs expand2profile \
      ~{if defined(comp_bias_corr) then ("--comp-bias-corr " +  '"' + comp_bias_corr + '"') else ""} \
      ~{if defined(gap_open) then ("--gap-open " +  '"' + gap_open + '"') else ""} \
      ~{if defined(gap_extend) then ("--gap-extend " +  '"' + gap_extend + '"') else ""} \
      ~{if defined(score_bias) then ("--score-bias " +  '"' + score_bias + '"') else ""} \
      ~{if defined(list_matches_fraction) then ("-c " +  '"' + list_matches_fraction + '"') else ""} \
      ~{if defined(cov_mode) then ("--cov-mode " +  '"' + cov_mode + '"') else ""} \
      ~{if defined(e_profile) then ("--e-profile " +  '"' + e_profile + '"') else ""} \
      ~{if defined(mask_profile) then ("--mask-profile " +  '"' + mask_profile + '"') else ""} \
      ~{if defined(wg) then ("--wg " +  '"' + wg + '"') else ""} \
      ~{if defined(filter_msa) then ("--filter-msa " +  '"' + filter_msa + '"') else ""} \
      ~{if defined(max_seq_id) then ("--max-seq-id " +  '"' + max_seq_id + '"') else ""} \
      ~{if defined(qid) then ("--qid " +  '"' + qid + '"') else ""} \
      ~{if defined(qsc) then ("--qsc " +  '"' + qsc + '"') else ""} \
      ~{if defined(cov) then ("--cov " +  '"' + cov + '"') else ""} \
      ~{if defined(diff) then ("--diff " +  '"' + diff + '"') else ""} \
      ~{if defined(pc_a) then ("--pca " +  '"' + pc_a + '"') else ""} \
      ~{if defined(pcb) then ("--pcb " +  '"' + pcb + '"') else ""} \
      ~{if defined(expansion_mode) then ("--expansion-mode " +  '"' + expansion_mode + '"') else ""} \
      ~{if defined(allow_deletion) then ("--allow-deletion " +  '"' + allow_deletion + '"') else ""} \
      ~{if defined(sub_mat) then ("--sub-mat " +  '"' + sub_mat + '"') else ""} \
      ~{if defined(max_seq_len) then ("--max-seq-len " +  '"' + max_seq_len + '"') else ""} \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0"
  }
  parameter_meta {
    comp_bias_corr: "Correct for locally biased amino acid composition (range 0-1) [1]"
    gap_open: "Gap open cost [nucl:5,aa:11]"
    gap_extend: "Gap extension cost [nucl:2,aa:1]"
    score_bias: "Score bias when computing SW alignment (in bits) [0.000]"
    list_matches_fraction: "List matches above this fraction of aligned (covered) residues (see --cov-mode) [0.000]"
    cov_mode: "0: coverage of query and target\\n1: coverage of target\\n2: coverage of query\\n3: target seq. length has to be at least x% of query length\\n4: query seq. length has to be at least x% of target length\\n5: short seq. needs to be at least x% of the other seq. length [0]"
    e_profile: "Include sequences matches with < E-value thr. into the profile (>=0.0) [1.000E-03]"
    mask_profile: "Mask query sequence of profile using tantan [0,1] [1]"
    wg: "Use global sequence weighting for profile calculation [0]"
    filter_msa: "Filter msa: 0: do not filter, 1: filter [1]"
    max_seq_id: "Reduce redundancy of output MSA using max. pairwise sequence identity [0.0,1.0] [0.900]"
    qid: "Reduce diversity of output MSAs using min.seq. identity with query sequences [0.0,1.0] [0.000]"
    qsc: "Reduce diversity of output MSAs using min. score per aligned residue with query sequences [-50.0,100.0] [-20.000]"
    cov: "Filter output MSAs using min. fraction of query residues covered by matched sequences [0.0,1.0] [0.000]"
    diff: "Filter MSAs by selecting most diverse set of sequences, keeping at least this many seqs in each MSA block of length 50 [1000]"
    pc_a: "Pseudo count admixture strength [0.000]"
    pcb: "Pseudo counts: Neff at half of maximum admixture (range 0.0-inf) [1.500]"
    expansion_mode: "Update score, E-value, and sequence identity by 0: input alignment 1: rescoring the inferred backtrace [0]"
    allow_deletion: "Allow deletions in a MSA [0]"
    sub_mat: "Substitution matrix file [nucl:nucleotide.out,aa:blosum62.out]"
    max_seq_len: "Maximum sequence length [65535]"
    compressed: "Write compressed output [0]"
    threads: "Number of CPU-cores used (all by default) [2]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
  }
  output {
    File out_stdout = stdout()
    File out_sub_mat = "${in_sub_mat}"
  }
}