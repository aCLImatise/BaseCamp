version 1.0

task MsaView {
  input {
    String outOutFormat
    Boolean tupleTupleSize
    String outOutFormat
    Boolean catCatMap
    String outOutFormat
    String startStart
    String endEnd
    String seqsSeqs
    Boolean excludeExclude
    String refRefIdx
    String aggregateAggregate
    File splitSplitAll
    Boolean summarySummaryOnly
    String windowWindowSummary
    String tupleTupleSize
    Boolean unorderedUnorderedSs
    String refseqRefseq
    Boolean keepKeepOverlapping
    Boolean unorderedUnorderedStats
    String cleanCleanCoding
    String cleanCleanIndels
    String? optionsOptions
    String? inInFile
  }
  command <<<
    msa_view \
      ~{optionsOptions} \
      ~{if defined(outOutFormat) then ("--out-format " +  '"' + outOutFormat + '"') else ""} \
      ~{true="--tuple-size" false="" tupleTupleSize} \
      ~{if defined(outOutFormat) then ("--out-format " +  '"' + outOutFormat + '"') else ""} \
      ~{true="--catmap" false="" catCatMap} \
      ~{if defined(outOutFormat) then ("--out-format " +  '"' + outOutFormat + '"') else ""} \
      ~{if defined(startStart) then ("--start " +  '"' + startStart + '"') else ""} \
      ~{if defined(endEnd) then ("--end " +  '"' + endEnd + '"') else ""} \
      ~{if defined(seqsSeqs) then ("--seqs " +  '"' + seqsSeqs + '"') else ""} \
      ~{true="--exclude" false="" excludeExclude} \
      ~{if defined(refRefIdx) then ("--refidx " +  '"' + refRefIdx + '"') else ""} \
      ~{if defined(aggregateAggregate) then ("--aggregate " +  '"' + aggregateAggregate + '"') else ""} \
      ~{if defined(splitSplitAll) then ("--split-all " +  '"' + splitSplitAll + '"') else ""} \
      ~{true="--summary-only" false="" summarySummaryOnly} \
      ~{if defined(windowWindowSummary) then ("--window-summary " +  '"' + windowWindowSummary + '"') else ""} \
      ~{if defined(tupleTupleSize) then ("--tuple-size " +  '"' + tupleTupleSize + '"') else ""} \
      ~{true="--unordered-ss" false="" unorderedUnorderedSs} \
      ~{if defined(refseqRefseq) then ("--refseq " +  '"' + refseqRefseq + '"') else ""} \
      ~{true="--keep-overlapping" false="" keepKeepOverlapping} \
      ~{true="--unordered-stats" false="" unorderedUnorderedStats} \
      ~{if defined(cleanCleanCoding) then ("--clean-coding " +  '"' + cleanCleanCoding + '"') else ""} \
      ~{if defined(cleanCleanIndels) then ("--clean-indels " +  '"' + cleanCleanIndels + '"') else ""} \
      ~{inInFile}
  >>>
}