version 1.0

task FcDedupATigs {
  input {
    Int maxMaxIdt
    Int maxMaxAlnCov
    Int minMinLenDiff
    Int minMinSeqLen
    String ploidyPloidy
    String aACtgAll
  }
  command <<<
    fc_dedup_a_tigs \
      ~{if defined(maxMaxIdt) then ("--max-idt " +  '"' + maxMaxIdt + '"') else ""} \
      ~{if defined(maxMaxAlnCov) then ("--max-aln-cov " +  '"' + maxMaxAlnCov + '"') else ""} \
      ~{if defined(minMinLenDiff) then ("--min-len-diff " +  '"' + minMinLenDiff + '"') else ""} \
      ~{if defined(minMinSeqLen) then ("--min-seq-len " +  '"' + minMinSeqLen + '"') else ""} \
      ~{if defined(ploidyPloidy) then ("--ploidy " +  '"' + ploidyPloidy + '"') else ""} \
      ~{if defined(aACtgAll) then ("--a-ctg-all " +  '"' + aACtgAll + '"') else ""}
  >>>
}