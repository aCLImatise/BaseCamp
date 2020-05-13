version 1.0

task PlatypusSplitDb {
  input {
    File taxTaxFp
    File seqsSeqsFp
    File outputOutputFp
    String queryQuery
    File splitSplitFp
  }
  command <<<
    platypus split-db \
      ~{if defined(taxTaxFp) then ("--tax_fp " +  '"' + taxTaxFp + '"') else ""} \
      ~{if defined(seqsSeqsFp) then ("--seqs_fp " +  '"' + seqsSeqsFp + '"') else ""} \
      ~{if defined(outputOutputFp) then ("--output_fp " +  '"' + outputOutputFp + '"') else ""} \
      ~{if defined(queryQuery) then ("--query " +  '"' + queryQuery + '"') else ""} \
      ~{if defined(splitSplitFp) then ("--split_fp " +  '"' + splitSplitFp + '"') else ""}
  >>>
}