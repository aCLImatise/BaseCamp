version 1.0

task FcDedupATigs {
  input {
    Int? max_idt
    Int? max_aln_cov
    Int? min_len_diff
    Int? min_seq_len
    Int? ploidy
    String? a_ctg_all
  }
  command <<<
    fc_dedup_a_tigs \
      ~{if defined(max_idt) then ("--max-idt " +  '"' + max_idt + '"') else ""} \
      ~{if defined(max_aln_cov) then ("--max-aln-cov " +  '"' + max_aln_cov + '"') else ""} \
      ~{if defined(min_len_diff) then ("--min-len-diff " +  '"' + min_len_diff + '"') else ""} \
      ~{if defined(min_seq_len) then ("--min-seq-len " +  '"' + min_seq_len + '"') else ""} \
      ~{if defined(ploidy) then ("--ploidy " +  '"' + ploidy + '"') else ""} \
      ~{if defined(a_ctg_all) then ("--a-ctg-all " +  '"' + a_ctg_all + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    max_idt: "Keep a-tig if the identity (in %) to the primary contig is <= max_idt (default: 96)"
    max_aln_cov: "Keep a-tig if the alignment coverage (in %) on the a-tig is <= max_aln_cov (default: 97)"
    min_len_diff: "Keep a-tig if the length different > min_len_diff (default: 500)"
    min_seq_len: "Branches with length less than this threshold will always be deduplicated. (default: 2000)"
    ploidy: "For a diplid genome, 2 branches per SV are expected. This parameter limits the number of pairwise comparison. If <= 0, this threshold is not applied. (default: 2)"
    a_ctg_all: "Input set of all associate contigs for deduplication. (default: a_ctg_all.fasta)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}