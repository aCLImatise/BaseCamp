version 1.0

task MmseqsResult2profile {
  input {
    Boolean? comp_bias_corr
    Boolean? mask_profile
    Boolean? e_profile
    Boolean? wg
    Boolean? filter_msa
    Boolean? max_seq_id
    Boolean? qid
    Boolean? qsc
    Boolean? cov
    Boolean? diff
    Boolean? pc_a
    Boolean? pcb
    Boolean? no_preload
    Boolean? sub_mat
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs result2profile \
      ~{true="--comp-bias-corr" false="" comp_bias_corr} \
      ~{true="--mask-profile" false="" mask_profile} \
      ~{true="--e-profile" false="" e_profile} \
      ~{true="--wg" false="" wg} \
      ~{true="--filter-msa" false="" filter_msa} \
      ~{true="--max-seq-id" false="" max_seq_id} \
      ~{true="--qid" false="" qid} \
      ~{true="--qsc" false="" qsc} \
      ~{true="--cov" false="" cov} \
      ~{true="--diff" false="" diff} \
      ~{true="--pca" false="" pc_a} \
      ~{true="--pcb" false="" pcb} \
      ~{true="--no-preload" false="" no_preload} \
      ~{true="--sub-mat" false="" sub_mat} \
      ~{true="--threads" false="" threads} \
      ~{true="-v" false="" verbosity_level_nothing}
  >>>
  parameter_meta {
    comp_bias_corr: "1               correct for locally biased amino acid composition [0,1]     "
    mask_profile: "1               mask query sequence of profile using tantan [0,1]           "
    e_profile: "0.001           includes sequences matches with < e-value thr. into the profile [>=0.0]"
    wg: "false           use global sequence weighting for profile calculation       "
    filter_msa: "1               filter msa: 0: do not filter, 1: filter                     "
    max_seq_id: "0.900           reduce redundancy of output MSA using max. pairwise sequence identity [0.0,1.0]"
    qid: "0.000           reduce diversity of output MSAs using min.seq. identity with query sequences [0.0,1.0]"
    qsc: "-20.000         reduce diversity of output MSAs using min. score per aligned residue with query sequences [-50.0,100.0]"
    cov: "0.000           filter output MSAs using min. fraction of query residues covered by matched sequences [0.0,1.0]"
    diff: "1000            filter MSAs by selecting most diverse set of sequences, keeping at least this many seqs in each MSA block of length 50"
    pc_a: "0.000           pseudo count admixture strength                             "
    pcb: "1.500           pseudo counts: Neff at half of maximum admixture (0.0,infinity)"
    no_preload: "false           Do not preload database                                     "
    sub_mat: "blosum62.out    amino acid substitution matrix file                         "
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
}