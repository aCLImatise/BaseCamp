version 1.0

task Pyssw.py {
  input {
    String subjectSubject
    String queryQuery
    String qQType
    String matchMatch
    String mismatchMismatch
    String gapGapOpen
    String gapGapExtend
    Int minMinScore
    Int minMinLen
    Boolean reverseReverse
    Boolean unalignedUnaligned
  }
  command <<<
    pyssw.py \
      ~{if defined(subjectSubject) then ("--subject " +  '"' + subjectSubject + '"') else ""} \
      ~{if defined(queryQuery) then ("--query " +  '"' + queryQuery + '"') else ""} \
      ~{if defined(qQType) then ("--qtype " +  '"' + qQType + '"') else ""} \
      ~{if defined(matchMatch) then ("--match " +  '"' + matchMatch + '"') else ""} \
      ~{if defined(mismatchMismatch) then ("--mismatch " +  '"' + mismatchMismatch + '"') else ""} \
      ~{if defined(gapGapOpen) then ("--gap_open " +  '"' + gapGapOpen + '"') else ""} \
      ~{if defined(gapGapExtend) then ("--gap_extend " +  '"' + gapGapExtend + '"') else ""} \
      ~{if defined(minMinScore) then ("--min_score " +  '"' + minMinScore + '"') else ""} \
      ~{if defined(minMinLen) then ("--min_len " +  '"' + minMinLen + '"') else ""} \
      ~{true="--reverse" false="" reverseReverse} \
      ~{true="--unaligned" false="" unalignedUnaligned}
  >>>
}