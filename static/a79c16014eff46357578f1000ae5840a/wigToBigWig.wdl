version 1.0

task WigToBigWig {
  input {
    String blockBlockSize
    String itemsItemsPerSlot
    String clipClip
    String uncUnc
    String fixedFixedSummaries
    String keepKeepAllChromosomes
    String? inInWig
    String? chromChromSizes
    String? outOutBw
  }
  command <<<
    wigToBigWig \
      ~{inInWig} \
      ~{if defined(blockBlockSize) then ("-blockSize " +  '"' + blockBlockSize + '"') else ""} \
      ~{if defined(itemsItemsPerSlot) then ("-itemsPerSlot " +  '"' + itemsItemsPerSlot + '"') else ""} \
      ~{if defined(clipClip) then ("-clip " +  '"' + clipClip + '"') else ""} \
      ~{if defined(uncUnc) then ("-unc " +  '"' + uncUnc + '"') else ""} \
      ~{if defined(fixedFixedSummaries) then ("-fixedSummaries " +  '"' + fixedFixedSummaries + '"') else ""} \
      ~{if defined(keepKeepAllChromosomes) then ("-keepAllChromosomes " +  '"' + keepKeepAllChromosomes + '"') else ""} \
      ~{chromChromSizes} \
      ~{outOutBw}
  >>>
}