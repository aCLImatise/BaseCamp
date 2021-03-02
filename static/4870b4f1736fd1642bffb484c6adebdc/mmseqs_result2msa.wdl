version 1.0

task MmseqsResult2msa {
  input {
    Boolean? comp_bias_corr
    Boolean? e_profile
    Boolean? filter_msa
    Boolean? max_seq_id
    Boolean? qid
    Boolean? two_zero_dot_zero_zero_zero
    Boolean? cov
    Boolean? diff
    Boolean? allow_deletion
    Boolean? compress
    Boolean? summarize
    File? sub_mat
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs result2msa \
      ~{if (comp_bias_corr) then "--comp-bias-corr" else ""} \
      ~{if (e_profile) then "--e-profile" else ""} \
      ~{if (filter_msa) then "--filter-msa" else ""} \
      ~{if (max_seq_id) then "--max-seq-id" else ""} \
      ~{if (qid) then "--qid" else ""} \
      ~{if (two_zero_dot_zero_zero_zero) then "-20.000" else ""} \
      ~{if (cov) then "--cov" else ""} \
      ~{if (diff) then "--diff" else ""} \
      ~{if (allow_deletion) then "--allow-deletion" else ""} \
      ~{if (compress) then "--compress" else ""} \
      ~{if (summarize) then "--summarize" else ""} \
      ~{if (sub_mat) then "--sub-mat" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (verbosity_level_nothing) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    comp_bias_corr: "1               correct for locally biased amino acid composition [0,1]"
    e_profile: "0.001           includes sequences matches with < e-value thr. into the profile [>=0.0]"
    filter_msa: "0               filter msa: 0: do not filter, 1: filter"
    max_seq_id: "0.900           reduce redundancy of output MSA using max. pairwise sequence identity [0.0,1.0]"
    qid: "0.000           reduce diversity of output MSAs using min.seq. identity with query sequences [0.0,1.0]"
    two_zero_dot_zero_zero_zero: "reduce diversity of output MSAs using min. score per aligned residue with query sequences [-50.0,100.0]"
    cov: "0.000           filter output MSAs using min. fraction of query residues covered by matched sequences [0.0,1.0]"
    diff: "1000            filter MSAs by selecting most diverse set of sequences, keeping at least this many seqs in each MSA block of length 50"
    allow_deletion: "false           allow deletions in a MSA"
    compress: "false           create MSA in ca3m format"
    summarize: "false           summarize cluster headers into a single header description"
    sub_mat: "blosum62.out    amino acid substitution matrix file"
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
  output {
    File out_stdout = stdout()
    File out_sub_mat = "${in_sub_mat}"
  }
}