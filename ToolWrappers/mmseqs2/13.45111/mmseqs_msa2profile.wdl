version 1.0

task MmseqsMsa2profile {
  input {
    Int? comp_bias_corr
    Int? gap_open
    Int? gap_extend
    Int? match_mode
    Float? match_ratio
    Float? pc_a
    Float? pcb
    Boolean? wg
    Int? filter_msa
    Float? cov
    Float? qid
    Float? qsc
    Float? max_seq_id
    Int? diff
    Int? msa_type
    File? sub_mat
    Int? threads
    Int? compressed
    Int? verbosity_level_errors
    Boolean? skip_query
  }
  command <<<
    mmseqs msa2profile \
      ~{if defined(comp_bias_corr) then ("--comp-bias-corr " +  '"' + comp_bias_corr + '"') else ""} \
      ~{if defined(gap_open) then ("--gap-open " +  '"' + gap_open + '"') else ""} \
      ~{if defined(gap_extend) then ("--gap-extend " +  '"' + gap_extend + '"') else ""} \
      ~{if defined(match_mode) then ("--match-mode " +  '"' + match_mode + '"') else ""} \
      ~{if defined(match_ratio) then ("--match-ratio " +  '"' + match_ratio + '"') else ""} \
      ~{if defined(pc_a) then ("--pca " +  '"' + pc_a + '"') else ""} \
      ~{if defined(pcb) then ("--pcb " +  '"' + pcb + '"') else ""} \
      ~{if defined(wg) then ("--wg " +  '"' + wg + '"') else ""} \
      ~{if defined(filter_msa) then ("--filter-msa " +  '"' + filter_msa + '"') else ""} \
      ~{if defined(cov) then ("--cov " +  '"' + cov + '"') else ""} \
      ~{if defined(qid) then ("--qid " +  '"' + qid + '"') else ""} \
      ~{if defined(qsc) then ("--qsc " +  '"' + qsc + '"') else ""} \
      ~{if defined(max_seq_id) then ("--max-seq-id " +  '"' + max_seq_id + '"') else ""} \
      ~{if defined(diff) then ("--diff " +  '"' + diff + '"') else ""} \
      ~{if defined(msa_type) then ("--msa-type " +  '"' + msa_type + '"') else ""} \
      ~{if defined(sub_mat) then ("--sub-mat " +  '"' + sub_mat + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""} \
      ~{if defined(skip_query) then ("--skip-query " +  '"' + skip_query + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0"
  }
  parameter_meta {
    comp_bias_corr: "Correct for locally biased amino acid composition (range 0-1) [1]"
    gap_open: "Gap open cost [nucl:5,aa:11]"
    gap_extend: "Gap extension cost [nucl:2,aa:1]"
    match_mode: "0: Columns that have a residue in the first sequence are kept, 1: columns that have a residue in --match-ratio of all sequences are kept [0]"
    match_ratio: "Columns that have a residue in this ratio of all sequences are kept [0.500]"
    pc_a: "Pseudo count admixture strength [0.000]"
    pcb: "Pseudo counts: Neff at half of maximum admixture (range 0.0-inf) [1.500]"
    wg: "Use global sequence weighting for profile calculation [0]"
    filter_msa: "Filter msa: 0: do not filter, 1: filter [1]"
    cov: "Filter output MSAs using min. fraction of query residues covered by matched sequences [0.0,1.0] [0.000]"
    qid: "Reduce diversity of output MSAs using min.seq. identity with query sequences [0.0,1.0] [0.000]"
    qsc: "Reduce diversity of output MSAs using min. score per aligned residue with query sequences [-50.0,100.0] [-20.000]"
    max_seq_id: "Reduce redundancy of output MSA using max. pairwise sequence identity [0.0,1.0] [0.900]"
    diff: "Filter MSAs by selecting most diverse set of sequences, keeping at least this many seqs in each MSA block of length 50 [1000]"
    msa_type: "MSA Type: 0: cA3M, 1: A3M, 2: FASTA [2]"
    sub_mat: "Substitution matrix file [nucl:nucleotide.out,aa:blosum62.out]"
    threads: "Number of CPU-cores used (all by default) [2]"
    compressed: "Write compressed output [0]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
    skip_query: "Skip the query sequence [0]"
  }
  output {
    File out_stdout = stdout()
    File out_sub_mat = "${in_sub_mat}"
  }
}