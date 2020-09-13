version 1.0

task MmseqsMsa2profile {
  input {
    Boolean? comp_bias_corr
    Boolean? match_mode
    Boolean? match_ratio
    Boolean? pc_a
    Boolean? pcb
    Boolean? wg
    Boolean? filter_msa
    Boolean? cov
    Boolean? qid
    Boolean? qsc
    Boolean? max_seq_id
    Boolean? diff
    Boolean? msa_type
    File? sub_mat
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs msa2profile \
      ~{if (comp_bias_corr) then "--comp-bias-corr" else ""} \
      ~{if (match_mode) then "--match-mode" else ""} \
      ~{if (match_ratio) then "--match-ratio" else ""} \
      ~{if (pc_a) then "--pca" else ""} \
      ~{if (pcb) then "--pcb" else ""} \
      ~{if (wg) then "--wg" else ""} \
      ~{if (filter_msa) then "--filter-msa" else ""} \
      ~{if (cov) then "--cov" else ""} \
      ~{if (qid) then "--qid" else ""} \
      ~{if (qsc) then "--qsc" else ""} \
      ~{if (max_seq_id) then "--max-seq-id" else ""} \
      ~{if (diff) then "--diff" else ""} \
      ~{if (msa_type) then "--msa-type" else ""} \
      ~{if (sub_mat) then "--sub-mat" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (verbosity_level_nothing) then "-v" else ""}
  >>>
  parameter_meta {
    comp_bias_corr: "1               correct for locally biased amino acid composition [0,1]"
    match_mode: "0               0: Columns that have a residue in the first sequence are kept, 1: columns that have a residue in --match-ratio of all sequences are kept."
    match_ratio: "0.500           columns that have a residue in this ratio of all sequences are kept"
    pc_a: "0.000           pseudo count admixture strength"
    pcb: "1.500           pseudo counts: Neff at half of maximum admixture (0.0,infinity)"
    wg: "false           use global sequence weighting for profile calculation"
    filter_msa: "1               filter msa: 0: do not filter, 1: filter"
    cov: "0.000           filter output MSAs using min. fraction of query residues covered by matched sequences [0.0,1.0]"
    qid: "0.000           reduce diversity of output MSAs using min.seq. identity with query sequences [0.0,1.0]"
    qsc: "-20.000         reduce diversity of output MSAs using min. score per aligned residue with query sequences [-50.0,100.0]"
    max_seq_id: "0.900           reduce redundancy of output MSA using max. pairwise sequence identity [0.0,1.0]"
    diff: "1000            filter MSAs by selecting most diverse set of sequences, keeping at least this many seqs in each MSA block of length 50"
    msa_type: "2               MSA Type: cA3M 0, A3M 1, FASTA 2"
    sub_mat: "blosum62.out    amino acid substitution matrix file"
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
  output {
    File out_stdout = stdout()
    File out_sub_mat = "${in_sub_mat}"
  }
}