version 1.0

task NucmerContigAlign.pl {
  input {
    String queryQuery
    String refRef
    String minMinId
    String minMinLen
    String minMinCov
    String prefixPrefix
    String errorErrorCorrect
    String nucNucLen
    String maxMaxInDel
    String threadThread
  }
  command <<<
    Nucmer_contig_align.pl \
      ~{if defined(queryQuery) then ("--query " +  '"' + queryQuery + '"') else ""} \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""} \
      ~{if defined(minMinId) then ("--min_id " +  '"' + minMinId + '"') else ""} \
      ~{if defined(minMinLen) then ("--min_len " +  '"' + minMinLen + '"') else ""} \
      ~{if defined(minMinCov) then ("--min_cov " +  '"' + minMinCov + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(errorErrorCorrect) then ("--error_correct " +  '"' + errorErrorCorrect + '"') else ""} \
      ~{if defined(nucNucLen) then ("--nuc_len " +  '"' + nucNucLen + '"') else ""} \
      ~{if defined(maxMaxInDel) then ("--max_indel " +  '"' + maxMaxInDel + '"') else ""} \
      ~{if defined(threadThread) then ("--thread " +  '"' + threadThread + '"') else ""}
  >>>
}