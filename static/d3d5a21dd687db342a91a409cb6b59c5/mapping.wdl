version 1.0

task Mapping {
  input {
    Int bB
    String fm9Fm9
    String fastFastQ
    File listList2Exclude
    Boolean multiMultiFastA
    String ntNt
    String offsetOffsetFm9
    String outputOutput
    String printPrint
    Int sizeSize
    String totalTotalReads
    String wW
  }
  command <<<
    mapping \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(fm9Fm9) then ("-fm9 " +  '"' + fm9Fm9 + '"') else ""} \
      ~{if defined(fastFastQ) then ("-fastq " +  '"' + fastFastQ + '"') else ""} \
      ~{if defined(listList2Exclude) then ("-list2Exclude " +  '"' + listList2Exclude + '"') else ""} \
      ~{true="-multiFasta" false="" multiMultiFastA} \
      ~{if defined(ntNt) then ("-nt " +  '"' + ntNt + '"') else ""} \
      ~{if defined(offsetOffsetFm9) then ("-offsetFM9 " +  '"' + offsetOffsetFm9 + '"') else ""} \
      ~{if defined(outputOutput) then ("-output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(printPrint) then ("-print " +  '"' + printPrint + '"') else ""} \
      ~{if defined(sizeSize) then ("-size " +  '"' + sizeSize + '"') else ""} \
      ~{if defined(totalTotalReads) then ("-totalReads " +  '"' + totalTotalReads + '"') else ""} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""}
  >>>
}