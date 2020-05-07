version 1.0

task CorrectContigsCoords.pl {
  input {
    String queryQuery
    String refRef
    String alignAlign
    String minMinId
    String minMinCov
    String minMinAlign
    String minMinLen
    String prefixPrefix
    String errorErrorCorrect
    String maxMaxInDel
    String threadThread
  }
  command <<<
    correct_contigs_coords.pl \
      ~{if defined(queryQuery) then ("--query " +  '"' + queryQuery + '"') else ""} \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""} \
      ~{if defined(alignAlign) then ("--align " +  '"' + alignAlign + '"') else ""} \
      ~{if defined(minMinId) then ("--min_id " +  '"' + minMinId + '"') else ""} \
      ~{if defined(minMinCov) then ("--min_cov " +  '"' + minMinCov + '"') else ""} \
      ~{if defined(minMinAlign) then ("--min_align " +  '"' + minMinAlign + '"') else ""} \
      ~{if defined(minMinLen) then ("--min_len " +  '"' + minMinLen + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(errorErrorCorrect) then ("--error_correct " +  '"' + errorErrorCorrect + '"') else ""} \
      ~{if defined(maxMaxInDel) then ("--max_indel " +  '"' + maxMaxInDel + '"') else ""} \
      ~{if defined(threadThread) then ("--thread " +  '"' + threadThread + '"') else ""}
  >>>
}