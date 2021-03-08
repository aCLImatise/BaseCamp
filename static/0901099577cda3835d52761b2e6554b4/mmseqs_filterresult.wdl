version 1.0

task MmseqsFilterresult {
  input {
    Int? comp_bias_corr
    Int? gap_open
    Int? gap_extend
    Float? max_seq_id
    Float? qid
    Float? qsc
    Float? cov
    Int? diff
    Boolean? allow_deletion
    File? sub_mat
    Int? threads
    Int? compressed
    Int? verbosity_level_errors
  }
  command <<<
    mmseqs filterresult \
      ~{if defined(comp_bias_corr) then ("--comp-bias-corr " +  '"' + comp_bias_corr + '"') else ""} \
      ~{if defined(gap_open) then ("--gap-open " +  '"' + gap_open + '"') else ""} \
      ~{if defined(gap_extend) then ("--gap-extend " +  '"' + gap_extend + '"') else ""} \
      ~{if defined(max_seq_id) then ("--max-seq-id " +  '"' + max_seq_id + '"') else ""} \
      ~{if defined(qid) then ("--qid " +  '"' + qid + '"') else ""} \
      ~{if defined(qsc) then ("--qsc " +  '"' + qsc + '"') else ""} \
      ~{if defined(cov) then ("--cov " +  '"' + cov + '"') else ""} \
      ~{if defined(diff) then ("--diff " +  '"' + diff + '"') else ""} \
      ~{if defined(allow_deletion) then ("--allow-deletion " +  '"' + allow_deletion + '"') else ""} \
      ~{if defined(sub_mat) then ("--sub-mat " +  '"' + sub_mat + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0"
  }
  parameter_meta {
    comp_bias_corr: "Correct for locally biased amino acid composition (range 0-1) [1]"
    gap_open: "Gap open cost [nucl:5,aa:11]"
    gap_extend: "Gap extension cost [nucl:2,aa:1]"
    max_seq_id: "Reduce redundancy of output MSA using max. pairwise sequence identity [0.0,1.0] [0.900]"
    qid: "Reduce diversity of output MSAs using min.seq. identity with query sequences [0.0,1.0] [0.000]"
    qsc: "Reduce diversity of output MSAs using min. score per aligned residue with query sequences [-50.0,100.0] [-20.000]"
    cov: "Filter output MSAs using min. fraction of query residues covered by matched sequences [0.0,1.0] [0.000]"
    diff: "Filter MSAs by selecting most diverse set of sequences, keeping at least this many seqs in each MSA block of length 50 [1000]"
    allow_deletion: "Allow deletions in a MSA [0]"
    sub_mat: "Substitution matrix file [nucl:nucleotide.out,aa:blosum62.out]"
    threads: "Number of CPU-cores used (all by default) [2]"
    compressed: "Write compressed output [0]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
  }
  output {
    File out_stdout = stdout()
    File out_sub_mat = "${in_sub_mat}"
  }
}