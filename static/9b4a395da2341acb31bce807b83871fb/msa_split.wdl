version 1.0

task MsaSplit {
  input {
    Boolean windowsWindows
    Boolean betweenBetweenBlocks
    Boolean windowsWindows
    Boolean betweenBetweenBlocks
    String refRefIdx
    String seqsSeqs
    Boolean excludeExclude
    String orderOrder
    String minMinInformative
    String doDoCats
    String tupleTupleSize
    Boolean unorderedUnorderedSs
    Boolean summarySummary
    Boolean quietQuiet
    String? optionsOptions
    String? fnameFname
  }
  command <<<
    msa_split \
      ~{optionsOptions} \
      ~{true="--windows" false="" windowsWindows} \
      ~{true="--between-blocks" false="" betweenBetweenBlocks} \
      ~{true="--windows" false="" windowsWindows} \
      ~{true="--between-blocks" false="" betweenBetweenBlocks} \
      ~{if defined(refRefIdx) then ("--refidx " +  '"' + refRefIdx + '"') else ""} \
      ~{if defined(seqsSeqs) then ("--seqs " +  '"' + seqsSeqs + '"') else ""} \
      ~{true="--exclude" false="" excludeExclude} \
      ~{if defined(orderOrder) then ("--order " +  '"' + orderOrder + '"') else ""} \
      ~{if defined(minMinInformative) then ("--min-informative " +  '"' + minMinInformative + '"') else ""} \
      ~{if defined(doDoCats) then ("--do-cats " +  '"' + doDoCats + '"') else ""} \
      ~{if defined(tupleTupleSize) then ("--tuple-size " +  '"' + tupleTupleSize + '"') else ""} \
      ~{true="--unordered-ss" false="" unorderedUnorderedSs} \
      ~{true="--summary" false="" summarySummary} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{fnameFname}
  >>>
}